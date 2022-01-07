
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;
typedef int NPY_SEARCHSIDE ;


 int NPY_SEARCHLEFT ;
 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int **,int ,int *,int **) ;
 int * PyArray_Return (int *) ;
 scalar_t__ PyArray_SearchSorted (int *,int *,int ,int *) ;
 int PyArray_SearchsideConverter ;
 int * Py_None ;

__attribute__((used)) static PyObject *
array_searchsorted(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    static char *kwlist[] = {"keys", "side", "sorter", ((void*)0)};
    PyObject *keys;
    PyObject *sorter;
    NPY_SEARCHSIDE side = NPY_SEARCHLEFT;

    sorter = ((void*)0);
    if (!PyArg_ParseTupleAndKeywords(args, kwds, "O|O&O:searchsorted",
                                     kwlist, &keys,
                                     PyArray_SearchsideConverter, &side, &sorter)) {
        return ((void*)0);
    }
    if (sorter == Py_None) {
        sorter = ((void*)0);
    }
    return PyArray_Return((PyArrayObject *)PyArray_SearchSorted(self, keys, side, sorter));
}
