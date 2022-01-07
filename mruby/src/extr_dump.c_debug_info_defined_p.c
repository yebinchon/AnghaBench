
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rlen; struct TYPE_3__** reps; int debug_info; } ;
typedef TYPE_1__ mrb_irep ;
typedef int mrb_bool ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static mrb_bool
debug_info_defined_p(mrb_irep *irep)
{
  int i;

  if (!irep->debug_info) return FALSE;
  for (i=0; i<irep->rlen; i++) {
    if (!debug_info_defined_p(irep->reps[i])) return FALSE;
  }
  return TRUE;
}
