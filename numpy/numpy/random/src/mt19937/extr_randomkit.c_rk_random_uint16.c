
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rk_state ;
typedef int npy_uint32 ;
typedef scalar_t__ npy_uint16 ;
typedef size_t npy_intp ;


 int rk_uint32 (int *) ;

void rk_random_uint16(npy_uint16 off, npy_uint16 rng, npy_intp cnt,
                      npy_uint16 *out, rk_state *state) {
  npy_uint16 val, mask = rng;
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
  mask |= mask >> 8;

  for (i = 0; i < cnt; i++) {
    do {
      if (!bcnt) {
        buf = rk_uint32(state);
        bcnt = 1;
      } else {
        buf >>= 16;
        bcnt--;
      }
      val = (npy_uint16)buf & mask;
    } while (val > rng);
    out[i] = off + val;
  }
}
