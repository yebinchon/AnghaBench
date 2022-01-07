
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ elsize; } ;
typedef int PyObject ;
typedef int PyArrayObject ;


 TYPE_1__* PyArray_DESCR (int *) ;
 int * PyInt_FromLong (long) ;

__attribute__((used)) static PyObject *
array_itemsize_get(PyArrayObject *self)
{
    return PyInt_FromLong((long) PyArray_DESCR(self)->elsize);
}
