
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ npy_int16 ;
typedef int npy_half ;


 int NPY_HALF_NAN ;
 scalar_t__ npy_half_eq_nonan (int,int) ;
 int npy_half_isfinite (int) ;
 scalar_t__ npy_half_isinf (int) ;
 scalar_t__ npy_half_isnan (int) ;
 scalar_t__ npy_half_iszero (int) ;
 int npy_set_floatstatus_invalid () ;
 int npy_set_floatstatus_overflow () ;

npy_half npy_half_nextafter(npy_half x, npy_half y)
{
    npy_half ret;

    if (!npy_half_isfinite(x) || npy_half_isnan(y)) {



        ret = NPY_HALF_NAN;
    } else if (npy_half_eq_nonan(x, y)) {
        ret = x;
    } else if (npy_half_iszero(x)) {
        ret = (y&0x8000u) + 1;
    } else if (!(x&0x8000u)) {
        if ((npy_int16)x > (npy_int16)y) {
            ret = x-1;
        } else {
            ret = x+1;
        }
    } else {
        if (!(y&0x8000u) || (x&0x7fffu) > (y&0x7fffu)) {
            ret = x-1;
        } else {
            ret = x+1;
        }
    }






    return ret;
}
