
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t simple_rel_array_size; int * simple_rte_array; TYPE_1__** simple_rel_array; } ;
struct TYPE_6__ {size_t relid; scalar_t__ reloptkind; } ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ PlannerInfo ;
typedef size_t Index ;


 int Assert (int) ;
 scalar_t__ RELOPT_BASEREL ;
 int set_rel_pathlist (TYPE_2__*,TYPE_1__*,size_t,int ) ;

__attribute__((used)) static void
set_base_rel_pathlists(PlannerInfo *root)
{
 Index rti;

 for (rti = 1; rti < root->simple_rel_array_size; rti++)
 {
  RelOptInfo *rel = root->simple_rel_array[rti];


  if (rel == ((void*)0))
   continue;

  Assert(rel->relid == rti);


  if (rel->reloptkind != RELOPT_BASEREL)
   continue;

  set_rel_pathlist(root, rel, rti, root->simple_rte_array[rti]);
 }
}
