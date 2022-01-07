
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int npy_longdouble ;
typedef int npy_half ;
typedef int npy_float ;
typedef int npy_double ;
typedef int TrimMode ;
struct TYPE_14__ {int precision; int sign; int digits_left; int digits_right; int exp_digits; int trim_mode; int cutoff_mode; int digit_mode; scalar_t__ scientific; } ;
struct TYPE_13__ {int obval; } ;
struct TYPE_12__ {int obval; } ;
struct TYPE_11__ {int obval; } ;
struct TYPE_10__ {int obval; } ;
typedef int PyObject ;
typedef TYPE_1__ PyLongDoubleScalarObject ;
typedef TYPE_2__ PyHalfScalarObject ;
typedef TYPE_3__ PyFloatScalarObject ;
typedef TYPE_4__ PyDoubleScalarObject ;
typedef TYPE_5__ Dragon4_Options ;
typedef int DigitMode ;
typedef int CutoffMode ;


 int Double ;
 int * Dragon4_Positional_Double_opt (int *,TYPE_5__*) ;
 int * Dragon4_Positional_Float_opt (int *,TYPE_5__*) ;
 int * Dragon4_Positional_Half_opt (int *,TYPE_5__*) ;
 int * Dragon4_Positional_LongDouble_opt (int *,TYPE_5__*) ;
 int Float ;
 int Half ;
 int LongDouble ;
 scalar_t__ PyArray_IsScalar (int *,int ) ;
 scalar_t__ PyErr_Occurred () ;
 int PyFloat_AsDouble (int *) ;

PyObject *
Dragon4_Positional(PyObject *obj, DigitMode digit_mode, CutoffMode cutoff_mode,
                   int precision, int sign, TrimMode trim, int pad_left,
                   int pad_right)
{
    npy_double val;
    Dragon4_Options opt;

    opt.scientific = 0;
    opt.digit_mode = digit_mode;
    opt.cutoff_mode = cutoff_mode;
    opt.precision = precision;
    opt.sign = sign;
    opt.trim_mode = trim;
    opt.digits_left = pad_left;
    opt.digits_right = pad_right;
    opt.exp_digits = -1;

    if (PyArray_IsScalar(obj, Half)) {
        npy_half x = ((PyHalfScalarObject *)obj)->obval;
        return Dragon4_Positional_Half_opt(&x, &opt);
    }
    else if (PyArray_IsScalar(obj, Float)) {
        npy_float x = ((PyFloatScalarObject *)obj)->obval;
        return Dragon4_Positional_Float_opt(&x, &opt);
    }
    else if (PyArray_IsScalar(obj, Double)) {
        npy_double x = ((PyDoubleScalarObject *)obj)->obval;
        return Dragon4_Positional_Double_opt(&x, &opt);
    }
    else if (PyArray_IsScalar(obj, LongDouble)) {
        npy_longdouble x = ((PyLongDoubleScalarObject *)obj)->obval;
        return Dragon4_Positional_LongDouble_opt(&x, &opt);
    }

    val = PyFloat_AsDouble(obj);
    if (PyErr_Occurred()) {
        return ((void*)0);
    }
    return Dragon4_Positional_Double_opt(&val, &opt);
}
