
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int LSB ;

void set_coef(unsigned long *pf, unsigned int deg, unsigned long v) {
  if (v != 0)
    pf[deg >> 5] ^= (LSB << (deg & 0x1ful));
  else
    ;
}
