
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PyCObject_Check (int *) ;

int
F2PyCapsule_Check(PyObject *ptr)
{
    return PyCObject_Check(ptr);
}
