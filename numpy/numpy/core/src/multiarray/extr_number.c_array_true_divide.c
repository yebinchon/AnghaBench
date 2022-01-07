
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int true_divide; } ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int BINOP_GIVE_UP_IF_NEEDED (int *,int *,int ,int * (*) (int *,int *)) ;
 scalar_t__ PyArray_CheckExact (int *) ;
 int * PyArray_GenericBinaryFunction (int *,int *,int ) ;
 scalar_t__ PyArray_ISCOMPLEX (int *) ;
 scalar_t__ PyArray_ISFLOAT (int *) ;
 int array_inplace_true_divide ;
 TYPE_1__ n_ops ;
 int nb_true_divide ;
 scalar_t__ try_binary_elide (int *,int *,int *,int **,int ) ;

__attribute__((used)) static PyObject *
array_true_divide(PyArrayObject *m1, PyObject *m2)
{
    PyObject *res;

    BINOP_GIVE_UP_IF_NEEDED(m1, m2, nb_true_divide, array_true_divide);
    if (PyArray_CheckExact(m1) &&
            (PyArray_ISFLOAT(m1) || PyArray_ISCOMPLEX(m1)) &&
            try_binary_elide(m1, m2, &array_inplace_true_divide, &res, 0)) {
        return res;
    }
    return PyArray_GenericBinaryFunction(m1, m2, n_ops.true_divide);
}
