
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int indexed_tlist ;
struct TYPE_6__ {int * hashkeys; } ;
struct TYPE_5__ {scalar_t__ qual; int targetlist; struct TYPE_5__* lefttree; } ;
typedef int PlannerInfo ;
typedef TYPE_1__ Plan ;
typedef int Node ;
typedef int List ;
typedef TYPE_2__ Hash ;


 int Assert (int) ;
 scalar_t__ NIL ;
 int OUTER_VAR ;
 int * build_tlist_index (int ) ;
 scalar_t__ fix_upper_expr (int *,int *,int *,int ,int) ;
 int set_dummy_tlist_references (TYPE_1__*,int) ;

__attribute__((used)) static void
set_hash_references(PlannerInfo *root, Plan *plan, int rtoffset)
{
 Hash *hplan = (Hash *) plan;
 Plan *outer_plan = plan->lefttree;
 indexed_tlist *outer_itlist;






 outer_itlist = build_tlist_index(outer_plan->targetlist);
 hplan->hashkeys = (List *)
  fix_upper_expr(root,
        (Node *) hplan->hashkeys,
        outer_itlist,
        OUTER_VAR,
        rtoffset);


 set_dummy_tlist_references(plan, rtoffset);


 Assert(plan->qual == NIL);
}
