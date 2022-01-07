
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Py_ssize_t ;
typedef int PyArrayObject ;


 scalar_t__ PyArray_FailUnlessWriteable (int *,char*) ;
 int array_getreadbuf (int *,int,void**) ;

__attribute__((used)) static Py_ssize_t
array_getwritebuf(PyArrayObject *self, Py_ssize_t segment, void **ptrptr)
{
    if (PyArray_FailUnlessWriteable(self, "buffer source array") < 0) {
        return -1;
    }
    return array_getreadbuf(self, segment, (void **) ptrptr);
}
