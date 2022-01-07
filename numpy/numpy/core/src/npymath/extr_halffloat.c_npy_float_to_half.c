
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_uint32 ;
typedef int npy_half ;


 int npy_floatbits_to_halfbits (int ) ;

npy_half npy_float_to_half(float f)
{
    union { float f; npy_uint32 fbits; } conv;
    conv.f = f;
    return npy_floatbits_to_halfbits(conv.fbits);
}
