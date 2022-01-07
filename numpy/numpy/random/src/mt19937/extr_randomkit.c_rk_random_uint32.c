
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rk_state ;
typedef int npy_uint32 ;
typedef size_t npy_intp ;


 int rk_uint32 (int *) ;

void rk_random_uint32(npy_uint32 off, npy_uint32 rng, npy_intp cnt,
                      npy_uint32 *out, rk_state *state) {
  npy_uint32 val, mask = rng;
  npy_intp i;

  if (rng == 0) {
    for (i = 0; i < cnt; i++) {
      out[i] = off;
    }
    return;
  }


  mask |= mask >> 1;
  mask |= mask >> 2;
  mask |= mask >> 4;
  mask |= mask >> 8;
  mask |= mask >> 16;

  for (i = 0; i < cnt; i++) {
    while ((val = (rk_uint32(state) & mask)) > rng)
      ;
    out[i] = off + val;
  }
}
