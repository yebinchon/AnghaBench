
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_uint32 ;
typedef int npy_half ;


 int npy_halfbits_to_floatbits (int ) ;

float npy_half_to_float(npy_half h)
{
    union { float ret; npy_uint32 retbits; } conv;
    conv.retbits = npy_halfbits_to_floatbits(h);
    return conv.ret;
}
