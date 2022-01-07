
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PyObject_Free (int *) ;

__attribute__((used)) static void
array_free(PyObject * v)
{

    PyObject_Free(v);
}
