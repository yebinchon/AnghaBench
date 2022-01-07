
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int NPY_MAXDIMS ;
 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int **,int ,int*,int ,int **) ;
 int PyArray_AxisConverter ;
 scalar_t__ PyArray_Compress (int *,int *,int,int *) ;
 int PyArray_OutputConverter ;
 int * PyArray_Return (int *) ;

__attribute__((used)) static PyObject *
array_compress(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    int axis = NPY_MAXDIMS;
    PyObject *condition;
    PyArrayObject *out = ((void*)0);
    static char *kwlist[] = {"condition", "axis", "out", ((void*)0)};

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "O|O&O&:compress", kwlist,
                                     &condition,
                                     PyArray_AxisConverter, &axis,
                                     PyArray_OutputConverter, &out)) {
        return ((void*)0);
    }
    return PyArray_Return(
                (PyArrayObject *)PyArray_Compress(self, condition, axis, out));
}
