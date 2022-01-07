
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_uint64 ;
typedef int npy_half ;


 int npy_doublebits_to_halfbits (int ) ;

npy_half npy_double_to_half(double d)
{
    union { double d; npy_uint64 dbits; } conv;
    conv.d = d;
    return npy_doublebits_to_halfbits(conv.dbits);
}
