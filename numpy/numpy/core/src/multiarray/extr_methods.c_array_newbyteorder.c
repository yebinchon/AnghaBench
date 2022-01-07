
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArray_Descr ;
typedef int PyArrayObject ;


 char NPY_SWAP ;
 int PyArg_ParseTuple (int *,char*,int ,char*) ;
 int PyArray_ByteorderConverter ;
 int PyArray_DESCR (int *) ;
 int * PyArray_DescrNewByteorder (int ,char) ;
 int * PyArray_View (int *,int *,int *) ;

__attribute__((used)) static PyObject *
array_newbyteorder(PyArrayObject *self, PyObject *args)
{
    char endian = NPY_SWAP;
    PyArray_Descr *new;

    if (!PyArg_ParseTuple(args, "|O&:newbyteorder", PyArray_ByteorderConverter,
                          &endian)) {
        return ((void*)0);
    }
    new = PyArray_DescrNewByteorder(PyArray_DESCR(self), endian);
    if (!new) {
        return ((void*)0);
    }
    return PyArray_View(self, new, ((void*)0));

}
