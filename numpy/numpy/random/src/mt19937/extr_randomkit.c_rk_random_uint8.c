
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rk_state ;
typedef scalar_t__ npy_uint8 ;
typedef int npy_uint32 ;
typedef size_t npy_intp ;


 int rk_uint32 (int *) ;

void rk_random_uint8(npy_uint8 off, npy_uint8 rng, npy_intp cnt, npy_uint8 *out,
                     rk_state *state) {
  npy_uint8 val, mask = rng;
  npy_intp i;
  npy_uint32 buf;
  int bcnt = 0;

  if (rng == 0) {
    for (i = 0; i < cnt; i++) {
      out[i] = off;
    }
    return;
  }


  mask |= mask >> 1;
  mask |= mask >> 2;
  mask |= mask >> 4;

  for (i = 0; i < cnt; i++) {
    do {
      if (!bcnt) {
        buf = rk_uint32(state);
        bcnt = 3;
      } else {
        buf >>= 8;
        bcnt--;
      }
      val = (npy_uint8)buf & mask;
    } while (val > rng);
    out[i] = off + val;
  }
}
