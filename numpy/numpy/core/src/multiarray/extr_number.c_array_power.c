
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int power; } ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int BINOP_GIVE_UP_IF_NEEDED (int *,int *,int ,int * (*) (int *,int *,int *)) ;
 int * PyArray_GenericBinaryFunction (int *,int *,int ) ;
 int Py_INCREF (int *) ;
 int * Py_None ;
 int * Py_NotImplemented ;
 scalar_t__ fast_scalar_power (int *,int *,int ,int **) ;
 TYPE_1__ n_ops ;
 int nb_power ;

__attribute__((used)) static PyObject *
array_power(PyArrayObject *a1, PyObject *o2, PyObject *modulo)
{
    PyObject *value = ((void*)0);

    if (modulo != Py_None) {

        Py_INCREF(Py_NotImplemented);
        return Py_NotImplemented;
    }

    BINOP_GIVE_UP_IF_NEEDED(a1, o2, nb_power, array_power);
    if (fast_scalar_power(a1, o2, 0, &value) != 0) {
        value = PyArray_GenericBinaryFunction(a1, o2, n_ops.power);
    }
    return value;
}
