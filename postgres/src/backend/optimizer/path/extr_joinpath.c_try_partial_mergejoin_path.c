
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_26__ {int total_cost; } ;
struct TYPE_25__ {int restrictlist; } ;
struct TYPE_24__ {int pathkeys; TYPE_1__* param_info; } ;
struct TYPE_23__ {int lateral_relids; } ;
struct TYPE_22__ {int ppi_req_outer; } ;
typedef int Relids ;
typedef TYPE_2__ RelOptInfo ;
typedef int PlannerInfo ;
typedef TYPE_3__ Path ;
typedef int List ;
typedef int JoinType ;
typedef TYPE_4__ JoinPathExtraData ;
typedef TYPE_5__ JoinCostWorkspace ;


 int Assert (int ) ;
 int * NIL ;
 int add_partial_path (TYPE_2__*,TYPE_3__*) ;
 int add_partial_path_precheck (TYPE_2__*,int ,int *) ;
 int bms_is_empty (int ) ;
 scalar_t__ create_mergejoin_path (int *,TYPE_2__*,int ,TYPE_5__*,TYPE_4__*,TYPE_3__*,TYPE_3__*,int ,int *,int *,int *,int *,int *) ;
 int initial_cost_mergejoin (int *,TYPE_5__*,int ,int *,TYPE_3__*,TYPE_3__*,int *,int *,TYPE_4__*) ;
 scalar_t__ pathkeys_contained_in (int *,int ) ;

__attribute__((used)) static void
try_partial_mergejoin_path(PlannerInfo *root,
         RelOptInfo *joinrel,
         Path *outer_path,
         Path *inner_path,
         List *pathkeys,
         List *mergeclauses,
         List *outersortkeys,
         List *innersortkeys,
         JoinType jointype,
         JoinPathExtraData *extra)
{
 JoinCostWorkspace workspace;




 Assert(bms_is_empty(joinrel->lateral_relids));
 if (inner_path->param_info != ((void*)0))
 {
  Relids inner_paramrels = inner_path->param_info->ppi_req_outer;

  if (!bms_is_empty(inner_paramrels))
   return;
 }





 if (outersortkeys &&
  pathkeys_contained_in(outersortkeys, outer_path->pathkeys))
  outersortkeys = NIL;
 if (innersortkeys &&
  pathkeys_contained_in(innersortkeys, inner_path->pathkeys))
  innersortkeys = NIL;




 initial_cost_mergejoin(root, &workspace, jointype, mergeclauses,
         outer_path, inner_path,
         outersortkeys, innersortkeys,
         extra);

 if (!add_partial_path_precheck(joinrel, workspace.total_cost, pathkeys))
  return;


 add_partial_path(joinrel, (Path *)
      create_mergejoin_path(root,
             joinrel,
             jointype,
             &workspace,
             extra,
             outer_path,
             inner_path,
             extra->restrictlist,
             pathkeys,
             ((void*)0),
             mergeclauses,
             outersortkeys,
             innersortkeys));
}
