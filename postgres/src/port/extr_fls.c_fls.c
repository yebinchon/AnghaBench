
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
fls(int mask)
{
 int bit;

 if (mask == 0)
  return (0);
 for (bit = 1; mask != 1; bit++)
  mask = (unsigned int) mask >> 1;
 return (bit);
}
