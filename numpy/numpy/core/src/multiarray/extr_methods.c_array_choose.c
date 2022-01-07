
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Py_ssize_t ;
typedef int PyObject ;
typedef int PyArrayObject ;
typedef int NPY_CLIPMODE ;


 int NPY_RAISE ;
 int NpyArg_ParseKeywords (int *,char*,char**,int ,int **,int ,int *) ;
 int PyArg_ParseTuple (int *,char*,int **) ;
 scalar_t__ PyArray_Choose (int *,int *,int *,int ) ;
 int PyArray_ClipmodeConverter ;
 int PyArray_OutputConverter ;
 int * PyArray_Return (int *) ;
 int PyTuple_Size (int *) ;

__attribute__((used)) static PyObject *
array_choose(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    static char *keywords[] = {"out", "mode", ((void*)0)};
    PyObject *choices;
    PyArrayObject *out = ((void*)0);
    NPY_CLIPMODE clipmode = NPY_RAISE;
    Py_ssize_t n = PyTuple_Size(args);

    if (n <= 1) {
        if (!PyArg_ParseTuple(args, "O:choose", &choices)) {
            return ((void*)0);
        }
    }
    else {
        choices = args;
    }

    if (!NpyArg_ParseKeywords(kwds, "|O&O&", keywords,
                PyArray_OutputConverter, &out,
                PyArray_ClipmodeConverter, &clipmode)) {
        return ((void*)0);
    }

    return PyArray_Return((PyArrayObject *)PyArray_Choose(self, choices, out, clipmode));
}
