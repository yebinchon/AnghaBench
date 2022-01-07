
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t simple_rel_array_size; TYPE_1__** simple_rel_array; } ;
struct TYPE_4__ {scalar_t__ reloptkind; } ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ PlannerInfo ;
typedef size_t Index ;


 scalar_t__ RELOPT_BASEREL ;

__attribute__((used)) static bool
has_multiple_baserels(PlannerInfo *root)
{
 int num_base_rels = 0;
 Index rti;

 for (rti = 1; rti < root->simple_rel_array_size; rti++)
 {
  RelOptInfo *brel = root->simple_rel_array[rti];

  if (brel == ((void*)0))
   continue;


  if (brel->reloptkind == RELOPT_BASEREL)
   if (++num_base_rels > 1)
    return 1;
 }
 return 0;
}
