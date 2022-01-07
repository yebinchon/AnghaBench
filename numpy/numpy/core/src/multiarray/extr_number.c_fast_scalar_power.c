
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * square; int * sqrt; int * _ones_like; int * reciprocal; int * positive; } ;
typedef int PyObject ;
typedef int PyArray_Descr ;
typedef int PyArrayObject ;
typedef scalar_t__ NPY_SCALARKIND ;


 int NPY_DOUBLE ;
 scalar_t__ NPY_FLOAT_SCALAR ;
 scalar_t__ PyArray_CastToType (int *,int *,int ) ;
 scalar_t__ PyArray_Check (int *) ;
 int * PyArray_DescrFromType (int ) ;
 int * PyArray_GenericInplaceUnaryFunction (int *,int *) ;
 int * PyArray_GenericUnaryFunction (int *,int *) ;
 scalar_t__ PyArray_ISCOMPLEX (int *) ;
 scalar_t__ PyArray_ISFLOAT (int *) ;
 int PyArray_ISFORTRAN (int *) ;
 scalar_t__ PyArray_ISINTEGER (int *) ;
 int PyArray_ISOBJECT (int *) ;
 int Py_DECREF (int *) ;
 scalar_t__ can_elide_temp_unary (int *) ;
 scalar_t__ is_scalar_with_conversion (int *,double*) ;
 TYPE_1__ n_ops ;

__attribute__((used)) static int
fast_scalar_power(PyArrayObject *a1, PyObject *o2, int inplace,
                  PyObject **value)
{
    double exponent;
    NPY_SCALARKIND kind;

    if (PyArray_Check(a1) &&
            !PyArray_ISOBJECT(a1) &&
            ((kind=is_scalar_with_conversion(o2, &exponent))>0)) {
        PyObject *fastop = ((void*)0);
        if (PyArray_ISFLOAT(a1) || PyArray_ISCOMPLEX(a1)) {
            if (exponent == 1.0) {
                fastop = n_ops.positive;
            }
            else if (exponent == -1.0) {
                fastop = n_ops.reciprocal;
            }
            else if (exponent == 0.0) {
                fastop = n_ops._ones_like;
            }
            else if (exponent == 0.5) {
                fastop = n_ops.sqrt;
            }
            else if (exponent == 2.0) {
                fastop = n_ops.square;
            }
            else {
                return -1;
            }

            if (inplace || can_elide_temp_unary(a1)) {
                *value = PyArray_GenericInplaceUnaryFunction(a1, fastop);
            }
            else {
                *value = PyArray_GenericUnaryFunction(a1, fastop);
            }
            return 0;
        }





        else if (exponent == 2.0) {
            fastop = n_ops.square;
            if (inplace) {
                *value = PyArray_GenericInplaceUnaryFunction(a1, fastop);
            }
            else {

                if (kind == NPY_FLOAT_SCALAR && PyArray_ISINTEGER(a1)) {
                    PyArray_Descr *dtype = PyArray_DescrFromType(NPY_DOUBLE);
                    a1 = (PyArrayObject *)PyArray_CastToType(a1, dtype,
                            PyArray_ISFORTRAN(a1));
                    if (a1 != ((void*)0)) {

                        *value = PyArray_GenericInplaceUnaryFunction(a1, fastop);
                        Py_DECREF(a1);
                    }
                }
                else {
                    *value = PyArray_GenericUnaryFunction(a1, fastop);
                }
            }
            return 0;
        }
    }

    return -1;
}
