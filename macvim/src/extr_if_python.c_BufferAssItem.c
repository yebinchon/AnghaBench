
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyInt ;
typedef int BufferObject ;


 int RBAsItem (int *,int ,int *,int,int,int *) ;

__attribute__((used)) static PyInt
BufferAssItem(PyObject *self, PyInt n, PyObject *val)
{
    return RBAsItem((BufferObject *)(self), n, val, 1, -1, ((void*)0));
}
