
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pos; int * key; } ;
typedef TYPE_1__ mt19937_state ;


 int N ;

void copy_state(mt19937_state *target_state, mt19937_state *state) {
  int i;

  for (i = 0; i < N; i++)
    target_state->key[i] = state->key[i];

  target_state->pos = state->pos;
}
