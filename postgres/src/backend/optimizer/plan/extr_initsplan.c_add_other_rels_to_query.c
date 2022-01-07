
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int simple_rel_array_size; TYPE_2__** simple_rte_array; TYPE_1__** simple_rel_array; } ;
struct TYPE_9__ {scalar_t__ inh; } ;
struct TYPE_8__ {scalar_t__ reloptkind; } ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ RangeTblEntry ;
typedef TYPE_3__ PlannerInfo ;


 scalar_t__ RELOPT_BASEREL ;
 int expand_inherited_rtentry (TYPE_3__*,TYPE_1__*,TYPE_2__*,int) ;

void
add_other_rels_to_query(PlannerInfo *root)
{
 int rti;

 for (rti = 1; rti < root->simple_rel_array_size; rti++)
 {
  RelOptInfo *rel = root->simple_rel_array[rti];
  RangeTblEntry *rte = root->simple_rte_array[rti];


  if (rel == ((void*)0))
   continue;


  if (rel->reloptkind != RELOPT_BASEREL)
   continue;


  if (rte->inh)
   expand_inherited_rtentry(root, rel, rte, rti);
 }
}
