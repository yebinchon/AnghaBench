
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
struct TYPE_24__ {TYPE_1__* param_info; } ;
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
 int NIL ;
 int add_partial_path (TYPE_2__*,TYPE_3__*) ;
 int add_partial_path_precheck (TYPE_2__*,int ,int ) ;
 int bms_is_empty (int ) ;
 scalar_t__ create_hashjoin_path (int *,TYPE_2__*,int ,TYPE_5__*,TYPE_4__*,TYPE_3__*,TYPE_3__*,int,int ,int *,int *) ;
 int initial_cost_hashjoin (int *,TYPE_5__*,int ,int *,TYPE_3__*,TYPE_3__*,TYPE_4__*,int) ;

__attribute__((used)) static void
try_partial_hashjoin_path(PlannerInfo *root,
        RelOptInfo *joinrel,
        Path *outer_path,
        Path *inner_path,
        List *hashclauses,
        JoinType jointype,
        JoinPathExtraData *extra,
        bool parallel_hash)
{
 JoinCostWorkspace workspace;







 Assert(bms_is_empty(joinrel->lateral_relids));
 if (inner_path->param_info != ((void*)0))
 {
  Relids inner_paramrels = inner_path->param_info->ppi_req_outer;

  if (!bms_is_empty(inner_paramrels))
   return;
 }





 initial_cost_hashjoin(root, &workspace, jointype, hashclauses,
        outer_path, inner_path, extra, parallel_hash);
 if (!add_partial_path_precheck(joinrel, workspace.total_cost, NIL))
  return;


 add_partial_path(joinrel, (Path *)
      create_hashjoin_path(root,
            joinrel,
            jointype,
            &workspace,
            extra,
            outer_path,
            inner_path,
            parallel_hash,
            extra->restrictlist,
            ((void*)0),
            hashclauses));
}
