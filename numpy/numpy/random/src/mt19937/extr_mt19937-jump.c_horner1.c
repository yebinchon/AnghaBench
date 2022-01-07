
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mt19937_state ;


 int MEXP ;
 int add_state (int *,int *) ;
 scalar_t__ calloc (int,int) ;
 int copy_state (int *,int *) ;
 int free (int *) ;
 int gen_next (int *) ;
 scalar_t__ get_coef (unsigned long*,int) ;

void horner1(unsigned long *pf, mt19937_state *state) {
  int i = MEXP - 1;
  mt19937_state *temp;

  temp = (mt19937_state *)calloc(1, sizeof(mt19937_state));

  while (get_coef(pf, i) == 0)
    i--;

  if (i > 0) {
    copy_state(temp, state);
    gen_next(temp);
    i--;
    for (; i > 0; i--) {
      if (get_coef(pf, i) != 0)
        add_state(temp, state);
      else
        ;
      gen_next(temp);
    }
    if (get_coef(pf, 0) != 0)
      add_state(temp, state);
    else
      ;
  } else if (i == 0)
    copy_state(temp, state);
  else
    ;

  copy_state(state, temp);
  free(temp);
}
