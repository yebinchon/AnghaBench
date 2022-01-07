
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* reltarget; } ;
struct TYPE_6__ {int per_tuple; int startup; } ;
struct TYPE_7__ {int width; TYPE_1__ cost; int * exprs; } ;
typedef TYPE_3__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int Node ;
typedef int List ;
typedef int AppendRelInfo ;


 scalar_t__ adjust_appendrel_attrs (int *,int *,int,int **) ;

__attribute__((used)) static void
build_child_join_reltarget(PlannerInfo *root,
         RelOptInfo *parentrel,
         RelOptInfo *childrel,
         int nappinfos,
         AppendRelInfo **appinfos)
{

 childrel->reltarget->exprs = (List *)
  adjust_appendrel_attrs(root,
          (Node *) parentrel->reltarget->exprs,
          nappinfos, appinfos);


 childrel->reltarget->cost.startup = parentrel->reltarget->cost.startup;
 childrel->reltarget->cost.per_tuple = parentrel->reltarget->cost.per_tuple;
 childrel->reltarget->width = parentrel->reltarget->width;
}
