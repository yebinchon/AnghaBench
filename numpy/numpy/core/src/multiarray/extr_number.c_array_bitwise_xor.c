
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bitwise_xor; } ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int BINOP_GIVE_UP_IF_NEEDED (int *,int *,int ,int * (*) (int *,int *)) ;
 int * PyArray_GenericBinaryFunction (int *,int *,int ) ;
 int array_inplace_bitwise_xor ;
 TYPE_1__ n_ops ;
 int nb_xor ;
 scalar_t__ try_binary_elide (int *,int *,int *,int **,int) ;

__attribute__((used)) static PyObject *
array_bitwise_xor(PyArrayObject *m1, PyObject *m2)
{
    PyObject *res;

    BINOP_GIVE_UP_IF_NEEDED(m1, m2, nb_xor, array_bitwise_xor);
    if (try_binary_elide(m1, m2, &array_inplace_bitwise_xor, &res, 1)) {
        return res;
    }
    return PyArray_GenericBinaryFunction(m1, m2, n_ops.bitwise_xor);
}
