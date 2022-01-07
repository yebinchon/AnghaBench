
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int LSB ;

unsigned long get_coef(unsigned long *pf, unsigned int deg) {
  if ((pf[deg >> 5] & (LSB << (deg & 0x1ful))) != 0)
    return (1);
  else
    return (0);
}
