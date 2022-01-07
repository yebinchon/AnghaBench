
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
number_of_bits (unsigned int val)
{
  int bits;

  for (bits = 0; val != 0; val &= val - 1) {
   bits++;
  }

  return bits;
}
