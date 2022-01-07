
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;
typedef int NPY_CLIPMODE ;


 int NPY_RAISE ;
 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int **,int **,int ,int *) ;
 int PyArray_ClipmodeConverter ;
 int * PyArray_PutTo (int *,int *,int *,int ) ;

__attribute__((used)) static PyObject *
array_put(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    PyObject *indices, *values;
    NPY_CLIPMODE mode = NPY_RAISE;
    static char *kwlist[] = {"indices", "values", "mode", ((void*)0)};

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "OO|O&:put", kwlist,
                                     &indices,
                                     &values,
                                     PyArray_ClipmodeConverter, &mode))
        return ((void*)0);
    return PyArray_PutTo(self, values, indices, mode);
}
