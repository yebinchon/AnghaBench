
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_uint64 ;
typedef int npy_half ;


 int npy_halfbits_to_doublebits (int ) ;

double npy_half_to_double(npy_half h)
{
    union { double ret; npy_uint64 retbits; } conv;
    conv.retbits = npy_halfbits_to_doublebits(h);
    return conv.ret;
}
