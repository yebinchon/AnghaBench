
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_bool ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int NPY_FALSE ;
 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int ,int *) ;
 int PyArray_BoolConverter ;
 int * PyArray_Byteswap (int *,int ) ;

__attribute__((used)) static PyObject *
array_byteswap(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    npy_bool inplace = NPY_FALSE;
    static char *kwlist[] = {"inplace", ((void*)0)};

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "|O&:byteswap", kwlist,
                                     PyArray_BoolConverter, &inplace)) {
        return ((void*)0);
    }
    return PyArray_Byteswap(self, inplace);
}
