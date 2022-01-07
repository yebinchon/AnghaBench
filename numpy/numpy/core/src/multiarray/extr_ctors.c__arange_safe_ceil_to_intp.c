
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_intp ;


 double NPY_MAX_INTP ;
 double NPY_MIN_INTP ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_OverflowError ;
 int PyExc_ValueError ;
 double npy_ceil (double) ;
 scalar_t__ npy_isnan (double) ;

__attribute__((used)) static npy_intp
_arange_safe_ceil_to_intp(double value)
{
    double ivalue;

    ivalue = npy_ceil(value);

    if (npy_isnan(ivalue)) {
        PyErr_SetString(PyExc_ValueError,
            "arange: cannot compute length");
        return -1;
    }
    if (!(NPY_MIN_INTP <= ivalue && ivalue <= NPY_MAX_INTP)) {
        PyErr_SetString(PyExc_OverflowError,
                "arange: overflow while computing length");
        return -1;
    }

    return (npy_intp)ivalue;
}
