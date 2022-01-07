
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rk_state ;


 unsigned long rk_random (int *) ;

void rk_fill(void *buffer, size_t size, rk_state *state) {
  unsigned long r;
  unsigned char *buf = buffer;

  for (; size >= 4; size -= 4) {
    r = rk_random(state);
    *(buf++) = r & 0xFF;
    *(buf++) = (r >> 8) & 0xFF;
    *(buf++) = (r >> 16) & 0xFF;
    *(buf++) = (r >> 24) & 0xFF;
  }

  if (!size) {
    return;
  }
  r = rk_random(state);
  for (; size; r >>= 8, size--) {
    *(buf++) = (unsigned char)(r & 0xFF);
  }
}
