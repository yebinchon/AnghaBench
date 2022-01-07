
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_4__ {int rlen; struct TYPE_4__** reps; } ;
typedef TYPE_1__ mrb_irep ;


 int mrb_irep_decref (int *,TYPE_1__*) ;

void
mrb_irep_cutref(mrb_state *mrb, mrb_irep *irep)
{
  mrb_irep *tmp;
  int i;

  for (i=0; i<irep->rlen; i++) {
    tmp = irep->reps[i];
    irep->reps[i] = ((void*)0);
    if (tmp) mrb_irep_decref(mrb, tmp);
  }
}
