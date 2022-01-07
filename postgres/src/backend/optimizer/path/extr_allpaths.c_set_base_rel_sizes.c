
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {size_t simple_rel_array_size; TYPE_1__* glob; int ** simple_rte_array; TYPE_2__** simple_rel_array; } ;
struct TYPE_10__ {size_t relid; scalar_t__ reloptkind; } ;
struct TYPE_9__ {scalar_t__ parallelModeOK; } ;
typedef TYPE_2__ RelOptInfo ;
typedef int RangeTblEntry ;
typedef TYPE_3__ PlannerInfo ;
typedef size_t Index ;


 int Assert (int) ;
 scalar_t__ RELOPT_BASEREL ;
 int set_rel_consider_parallel (TYPE_3__*,TYPE_2__*,int *) ;
 int set_rel_size (TYPE_3__*,TYPE_2__*,size_t,int *) ;

__attribute__((used)) static void
set_base_rel_sizes(PlannerInfo *root)
{
 Index rti;

 for (rti = 1; rti < root->simple_rel_array_size; rti++)
 {
  RelOptInfo *rel = root->simple_rel_array[rti];
  RangeTblEntry *rte;


  if (rel == ((void*)0))
   continue;

  Assert(rel->relid == rti);


  if (rel->reloptkind != RELOPT_BASEREL)
   continue;

  rte = root->simple_rte_array[rti];
  if (root->glob->parallelModeOK)
   set_rel_consider_parallel(root, rel, rte);

  set_rel_size(root, rel, rti, rte);
 }
}
