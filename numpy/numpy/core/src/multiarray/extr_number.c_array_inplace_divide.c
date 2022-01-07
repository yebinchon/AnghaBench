
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int divide; } ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int INPLACE_GIVE_UP_IF_NEEDED (int *,int *,int ,int * (*) (int *,int *)) ;
 int * PyArray_GenericInplaceBinaryFunction (int *,int *,int ) ;
 TYPE_1__ n_ops ;
 int nb_inplace_divide ;

__attribute__((used)) static PyObject *
array_inplace_divide(PyArrayObject *m1, PyObject *m2)
{
    INPLACE_GIVE_UP_IF_NEEDED(
            m1, m2, nb_inplace_divide, array_inplace_divide);
    return PyArray_GenericInplaceBinaryFunction(m1, m2, n_ops.divide);
}
