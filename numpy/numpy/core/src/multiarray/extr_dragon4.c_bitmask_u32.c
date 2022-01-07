
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_uint32 ;



__attribute__((used)) static inline npy_uint32
bitmask_u32(npy_uint32 n)
{
    return ~(~((npy_uint32)0) << n);
}
