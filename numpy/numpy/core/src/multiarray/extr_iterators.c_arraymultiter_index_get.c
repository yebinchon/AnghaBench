
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int npy_longlong ;
struct TYPE_3__ {scalar_t__ size; scalar_t__ index; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArrayMultiIterObject ;


 scalar_t__ NPY_MAX_LONG ;
 int * PyInt_FromLong (long) ;
 int * PyLong_FromLongLong (int ) ;

__attribute__((used)) static PyObject *
arraymultiter_index_get(PyArrayMultiIterObject *self)
{

    return PyInt_FromLong((long) self->index);
}
