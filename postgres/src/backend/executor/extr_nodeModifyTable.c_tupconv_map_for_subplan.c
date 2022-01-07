
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleConversionMap ;
struct TYPE_4__ {int mt_nplans; int ** mt_per_subplan_tupconv_maps; } ;
typedef TYPE_1__ ModifyTableState ;


 int Assert (int) ;
 int ExecSetupChildParentMapForSubplan (TYPE_1__*) ;

__attribute__((used)) static TupleConversionMap *
tupconv_map_for_subplan(ModifyTableState *mtstate, int whichplan)
{

 if (mtstate->mt_per_subplan_tupconv_maps == ((void*)0))
  ExecSetupChildParentMapForSubplan(mtstate);

 Assert(whichplan >= 0 && whichplan < mtstate->mt_nplans);
 return mtstate->mt_per_subplan_tupconv_maps[whichplan];
}
