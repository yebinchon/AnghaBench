
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rlen; struct TYPE_5__** reps; } ;
typedef TYPE_1__ mrb_irep ;



__attribute__((used)) static mrb_irep*
search_irep(mrb_irep *top, int bnest, int lev, mrb_irep *bottom)
{
  int i;

  for (i=0; i<top->rlen; i++) {
    mrb_irep* tmp = top->reps[i];

    if (tmp == bottom) return top;
    tmp = search_irep(tmp, bnest-1, lev, bottom);
    if (tmp) {
      if (bnest == lev) return top;
      return tmp;
    }
  }
  return ((void*)0);
}
