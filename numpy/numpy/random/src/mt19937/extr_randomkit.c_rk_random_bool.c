
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rk_state ;
typedef int npy_uint32 ;
typedef size_t npy_intp ;
typedef int npy_bool ;


 int assert (int) ;
 int rk_uint32 (int *) ;

void rk_random_bool(npy_bool off, npy_bool rng, npy_intp cnt, npy_bool *out,
                    rk_state *state) {
  npy_intp i;
  npy_uint32 buf;
  int bcnt = 0;

  if (rng == 0) {
    for (i = 0; i < cnt; i++) {
      out[i] = off;
    }
    return;
  }


  assert(rng == 1 && off == 0);
  for (i = 0; i < cnt; i++) {
    if (!bcnt) {
      buf = rk_uint32(state);
      bcnt = 31;
    } else {
      buf >>= 1;
      bcnt--;
    }
    out[i] = (buf & 0x00000001) != 0;
  }
}
