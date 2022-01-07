
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int constchar ;
typedef int Py_ssize_t ;
typedef int PyArrayObject ;


 int array_getreadbuf (int *,int ,void**) ;

__attribute__((used)) static Py_ssize_t
array_getcharbuf(PyArrayObject *self, Py_ssize_t segment, constchar **ptrptr)
{
    return array_getreadbuf(self, segment, (void **) ptrptr);
}
