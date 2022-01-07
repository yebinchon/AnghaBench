
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;
typedef int NPY_CLIPMODE ;


 int NPY_MAXDIMS ;
 int NPY_RAISE ;
 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int **,int ,int*,int ,int **,int ,int *) ;
 int PyArray_AxisConverter ;
 int PyArray_ClipmodeConverter ;
 int PyArray_OutputConverter ;
 int * PyArray_Return (int *) ;
 scalar_t__ PyArray_TakeFrom (int *,int *,int,int *,int ) ;

__attribute__((used)) static PyObject *
array_take(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    int dimension = NPY_MAXDIMS;
    PyObject *indices;
    PyArrayObject *out = ((void*)0);
    NPY_CLIPMODE mode = NPY_RAISE;
    static char *kwlist[] = {"indices", "axis", "out", "mode", ((void*)0)};

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "O|O&O&O&:take", kwlist,
                                     &indices,
                                     PyArray_AxisConverter, &dimension,
                                     PyArray_OutputConverter, &out,
                                     PyArray_ClipmodeConverter, &mode))
        return ((void*)0);

    return PyArray_Return((PyArrayObject *)
                PyArray_TakeFrom(self, indices, dimension, out, mode));
}
