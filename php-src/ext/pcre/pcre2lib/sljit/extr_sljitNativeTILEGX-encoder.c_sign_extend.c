
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline int
sign_extend(int n, int num_bits)
{
  int shift = (int)(sizeof(int) * 8 - num_bits);
  return (n << shift) >> shift;
}
