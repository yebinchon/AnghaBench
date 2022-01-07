
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int multiply; } ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int BINOP_GIVE_UP_IF_NEEDED (int *,int *,int ,int * (*) (int *,int *)) ;
 int * PyArray_GenericBinaryFunction (int *,int *,int ) ;
 int array_inplace_multiply ;
 TYPE_1__ n_ops ;
 int nb_multiply ;
 scalar_t__ try_binary_elide (int *,int *,int *,int **,int) ;

__attribute__((used)) static PyObject *
array_multiply(PyArrayObject *m1, PyObject *m2)
{
    PyObject *res;

    BINOP_GIVE_UP_IF_NEEDED(m1, m2, nb_multiply, array_multiply);
    if (try_binary_elide(m1, m2, &array_inplace_multiply, &res, 1)) {
        return res;
    }
    return PyArray_GenericBinaryFunction(m1, m2, n_ops.multiply);
}
