
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int chgParam; TYPE_1__* plan; } ;
struct TYPE_4__ {int allParam; } ;
typedef TYPE_2__ PlanState ;
typedef int Bitmapset ;


 int bms_free (int *) ;
 int * bms_intersect (int ,int *) ;
 int bms_is_empty (int *) ;
 int bms_join (int ,int *) ;

void
UpdateChangedParamSet(PlanState *node, Bitmapset *newchg)
{
 Bitmapset *parmset;





 parmset = bms_intersect(node->plan->allParam, newchg);





 if (!bms_is_empty(parmset))
  node->chgParam = bms_join(node->chgParam, parmset);
 else
  bms_free(parmset);
}
