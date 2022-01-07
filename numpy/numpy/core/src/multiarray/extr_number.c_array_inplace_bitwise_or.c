
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bitwise_or; } ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int INPLACE_GIVE_UP_IF_NEEDED (int *,int *,int ,int * (*) (int *,int *)) ;
 int * PyArray_GenericInplaceBinaryFunction (int *,int *,int ) ;
 TYPE_1__ n_ops ;
 int nb_inplace_or ;

__attribute__((used)) static PyObject *
array_inplace_bitwise_or(PyArrayObject *m1, PyObject *m2)
{
    INPLACE_GIVE_UP_IF_NEEDED(
            m1, m2, nb_inplace_or, array_inplace_bitwise_or);
    return PyArray_GenericInplaceBinaryFunction(m1, m2, n_ops.bitwise_or);
}
