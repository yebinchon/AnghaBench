
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ctr; } ;
typedef TYPE_2__ philox_state ;
struct TYPE_4__ {scalar_t__* v; } ;



extern void philox_jump(philox_state *state) {

  state->ctr->v[2]++;
  if (state->ctr->v[2] == 0) {
    state->ctr->v[3]++;
  }
}
