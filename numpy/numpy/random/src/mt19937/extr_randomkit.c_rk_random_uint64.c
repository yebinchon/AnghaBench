
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rk_state ;
typedef int npy_uint64 ;
typedef size_t npy_intp ;


 int rk_uint32 (int *) ;
 int rk_uint64 (int *) ;

void rk_random_uint64(npy_uint64 off, npy_uint64 rng, npy_intp cnt,
                      npy_uint64 *out, rk_state *state) {
  npy_uint64 val, mask = rng;
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
  mask |= mask >> 32;

  for (i = 0; i < cnt; i++) {
    if (rng <= 0xffffffffUL) {
      while ((val = (rk_uint32(state) & mask)) > rng)
        ;
    } else {
      while ((val = (rk_uint64(state) & mask)) > rng)
        ;
    }
    out[i] = off + val;
  }
}
