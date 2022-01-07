
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int invert; } ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int * PyArray_GenericInplaceUnaryFunction (int *,int ) ;
 int * PyArray_GenericUnaryFunction (int *,int ) ;
 scalar_t__ can_elide_temp_unary (int *) ;
 TYPE_1__ n_ops ;

__attribute__((used)) static PyObject *
array_invert(PyArrayObject *m1)
{
    if (can_elide_temp_unary(m1)) {
        return PyArray_GenericInplaceUnaryFunction(m1, n_ops.invert);
    }
    return PyArray_GenericUnaryFunction(m1, n_ops.invert);
}
