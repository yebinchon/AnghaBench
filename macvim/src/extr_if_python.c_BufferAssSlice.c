
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyInt ;
typedef int BufferObject ;


 int RBAsSlice (int *,int ,int ,int *,int,int,int *) ;

__attribute__((used)) static PyInt
BufferAssSlice(PyObject *self, PyInt lo, PyInt hi, PyObject *val)
{
    return RBAsSlice((BufferObject *)(self), lo, hi, val, 1, -1, ((void*)0));
}
