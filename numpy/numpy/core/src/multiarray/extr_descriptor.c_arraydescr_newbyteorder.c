
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArray_Descr ;


 char NPY_SWAP ;
 int PyArg_ParseTuple (int *,char*,int ,char*) ;
 int PyArray_ByteorderConverter ;
 scalar_t__ PyArray_DescrNewByteorder (int *,char) ;

__attribute__((used)) static PyObject *
arraydescr_newbyteorder(PyArray_Descr *self, PyObject *args)
{
    char endian=NPY_SWAP;

    if (!PyArg_ParseTuple(args, "|O&:newbyteorder", PyArray_ByteorderConverter,
                &endian)) {
        return ((void*)0);
    }
    return (PyObject *)PyArray_DescrNewByteorder(self, endian);
}
