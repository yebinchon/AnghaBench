
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t simple_rel_array_size; TYPE_1__** simple_rel_array; int hasLateralRTEs; } ;
struct TYPE_6__ {size_t relid; scalar_t__ reloptkind; } ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ PlannerInfo ;
typedef size_t Index ;


 int Assert (int) ;
 scalar_t__ RELOPT_BASEREL ;
 int extract_lateral_references (TYPE_2__*,TYPE_1__*,size_t) ;

void
find_lateral_references(PlannerInfo *root)
{
 Index rti;


 if (!root->hasLateralRTEs)
  return;




 for (rti = 1; rti < root->simple_rel_array_size; rti++)
 {
  RelOptInfo *brel = root->simple_rel_array[rti];


  if (brel == ((void*)0))
   continue;

  Assert(brel->relid == rti);
  if (brel->reloptkind != RELOPT_BASEREL)
   continue;

  extract_lateral_references(root, brel, rti);
 }
}
