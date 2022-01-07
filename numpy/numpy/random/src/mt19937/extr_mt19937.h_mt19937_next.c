
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ pos; int* key; } ;
typedef TYPE_1__ mt19937_state ;


 scalar_t__ RK_STATE_LEN ;
 int mt19937_gen (TYPE_1__*) ;

__attribute__((used)) static inline uint32_t mt19937_next(mt19937_state *state) {
  uint32_t y;

  if (state->pos == RK_STATE_LEN) {

    mt19937_gen(state);
  }
  y = state->key[state->pos++];


  y ^= (y >> 11);
  y ^= (y << 7) & 0x9d2c5680UL;
  y ^= (y << 15) & 0xefc60000UL;
  y ^= (y >> 18);

  return y;
}
