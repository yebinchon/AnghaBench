
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TupleDesc ;
typedef int TupleConversionMap ;
struct TYPE_7__ {int mt_nplans; int ** mt_per_subplan_tupconv_maps; TYPE_1__* resultRelInfo; } ;
struct TYPE_6__ {int ri_RelationDesc; } ;
typedef TYPE_1__ ResultRelInfo ;
typedef TYPE_2__ ModifyTableState ;


 int RelationGetDescr (int ) ;
 int * convert_tuples_by_name (int ,int ) ;
 TYPE_1__* getTargetResultRelInfo (TYPE_2__*) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static void
ExecSetupChildParentMapForSubplan(ModifyTableState *mtstate)
{
 ResultRelInfo *targetRelInfo = getTargetResultRelInfo(mtstate);
 ResultRelInfo *resultRelInfos = mtstate->resultRelInfo;
 TupleDesc outdesc;
 int numResultRelInfos = mtstate->mt_nplans;
 int i;
 outdesc = RelationGetDescr(targetRelInfo->ri_RelationDesc);

 mtstate->mt_per_subplan_tupconv_maps = (TupleConversionMap **)
  palloc(sizeof(TupleConversionMap *) * numResultRelInfos);

 for (i = 0; i < numResultRelInfos; ++i)
 {
  mtstate->mt_per_subplan_tupconv_maps[i] =
   convert_tuples_by_name(RelationGetDescr(resultRelInfos[i].ri_RelationDesc),
           outdesc);
 }
}
