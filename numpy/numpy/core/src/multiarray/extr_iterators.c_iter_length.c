
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; } ;
typedef int Py_ssize_t ;
typedef TYPE_1__ PyArrayIterObject ;



__attribute__((used)) static Py_ssize_t
iter_length(PyArrayIterObject *self)
{
    return self->size;
}
