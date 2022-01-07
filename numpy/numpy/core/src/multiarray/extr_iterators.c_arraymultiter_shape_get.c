
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dimensions; int nd; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArrayMultiIterObject ;


 int * PyArray_IntTupleFromIntp (int ,int ) ;

__attribute__((used)) static PyObject *
arraymultiter_shape_get(PyArrayMultiIterObject *self)
{
    return PyArray_IntTupleFromIntp(self->nd, self->dimensions);
}
