%.cpp: %.pyx
	cython --cplus $< -o $@

all: _mw_helper.cpp
	python setup.py build_ext --inplace

clean:
	python setup.py clean
	rm -rf *.so build
