
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rk_state ;


 unsigned long rk_random (int *) ;
 unsigned long rk_ulong (int *) ;

unsigned long rk_interval(unsigned long max, rk_state *state) {
  unsigned long mask = max, value;

  if (max == 0) {
    return 0;
  }

  mask |= mask >> 1;
  mask |= mask >> 2;
  mask |= mask >> 4;
  mask |= mask >> 8;
  mask |= mask >> 16;
  while ((value = (rk_ulong(state) & mask)) > max)
    ;

  return value;
}
