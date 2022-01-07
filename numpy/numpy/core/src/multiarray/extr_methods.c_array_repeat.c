
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int NPY_MAXDIMS ;
 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int **,int ,int*) ;
 int PyArray_AxisConverter ;
 scalar_t__ PyArray_Repeat (int *,int *,int) ;
 int * PyArray_Return (int *) ;

__attribute__((used)) static PyObject *
array_repeat(PyArrayObject *self, PyObject *args, PyObject *kwds) {
    PyObject *repeats;
    int axis = NPY_MAXDIMS;
    static char *kwlist[] = {"repeats", "axis", ((void*)0)};

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "O|O&:repeat", kwlist,
                                     &repeats,
                                     PyArray_AxisConverter, &axis)) {
        return ((void*)0);
    }
    return PyArray_Return((PyArrayObject *)PyArray_Repeat(self, repeats, axis));
}
