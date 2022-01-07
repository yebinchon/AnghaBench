
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_3__ {int refcnt; } ;
typedef TYPE_1__ mrb_irep ;



void
mrb_irep_incref(mrb_state *mrb, mrb_irep *irep)
{
  irep->refcnt++;
}
