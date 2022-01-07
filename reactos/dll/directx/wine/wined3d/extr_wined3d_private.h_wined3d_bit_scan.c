
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ffs (unsigned int) ;

__attribute__((used)) static inline int wined3d_bit_scan(unsigned int *x)
{
    int bit_offset = ffs(*x) - 1;
    *x ^= 1u << bit_offset;
    return bit_offset;
}
