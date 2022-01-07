
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
decide_k_bits(int p_bits)
{
 if (p_bits <= 5120)
  return p_bits / 10 + 160;
 else
  return (p_bits / 8 + 200) * 3 / 2;
}
