
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_uint16 ;
typedef int npy_half ;


 int NPY_HALF_NAN ;
 int NPY_HALF_PINF ;
 int npy_set_floatstatus_invalid () ;
 int npy_set_floatstatus_overflow () ;

npy_half npy_half_spacing(npy_half h)
{
    npy_half ret;
    npy_uint16 h_exp = h&0x7c00u;
    npy_uint16 h_sig = h&0x03ffu;
    if (h_exp == 0x7c00u) {



        ret = NPY_HALF_NAN;
    } else if (h == 0x7bffu) {



        ret = NPY_HALF_PINF;
    } else if ((h&0x8000u) && h_sig == 0) {
        if (h_exp > 0x2c00u) {
            ret = h_exp - 0x2c00u;
        } else if(h_exp > 0x0400u) {
            ret = 1 << ((h_exp >> 10) - 2);
        } else {
            ret = 0x0001u;
        }
    } else if (h_exp > 0x2800u) {
        ret = h_exp - 0x2800u;
    } else if (h_exp > 0x0400u) {
        ret = 1 << ((h_exp >> 10) - 1);
    } else {
        ret = 0x0001u;
    }

    return ret;
}
