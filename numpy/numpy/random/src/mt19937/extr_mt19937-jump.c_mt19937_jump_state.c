
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pos; } ;
typedef TYPE_1__ mt19937_state ;


 int MEXP ;
 scalar_t__ N ;
 int P_SIZE ;
 scalar_t__ calloc (int ,int) ;
 int free (unsigned long*) ;
 int horner1 (unsigned long*,TYPE_1__*) ;
 int set_coef (unsigned long*,int,int) ;

void mt19937_jump_state(mt19937_state *state, const char *jump_str) {
  unsigned long *pf;
  int i;

  pf = (unsigned long *)calloc(P_SIZE, sizeof(unsigned long));

  for (i = MEXP - 1; i > -1; i--) {
    if (jump_str[i] == '1')
      set_coef(pf, i, 1);
  }


  if (state->pos >= N) {
    state->pos = 0;
  }

  horner1(pf, state);

  free(pf);
}
