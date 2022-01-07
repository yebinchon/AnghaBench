
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long create_zero_mask(unsigned long bits)
{
 bits = (bits - 1) & ~bits;
 return bits >> 7;
}
