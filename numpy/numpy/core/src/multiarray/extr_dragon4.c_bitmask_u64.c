
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_uint64 ;
typedef int npy_uint32 ;



__attribute__((used)) static inline npy_uint64
bitmask_u64(npy_uint32 n)
{
    return ~(~((npy_uint64)0) << n);
}
