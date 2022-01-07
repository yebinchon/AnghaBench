
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


struct TYPE_31__ {int total_cost; } ;
struct TYPE_30__ {int restrictlist; } ;
struct TYPE_29__ {TYPE_2__* parent; TYPE_1__* param_info; } ;
struct TYPE_28__ {scalar_t__ relids; scalar_t__ top_parent_relids; int lateral_relids; } ;
struct TYPE_27__ {scalar_t__ ppi_req_outer; } ;
typedef scalar_t__ Relids ;
typedef TYPE_2__ RelOptInfo ;
typedef int PlannerInfo ;
typedef TYPE_3__ Path ;
typedef int List ;
typedef int JoinType ;
typedef TYPE_4__ JoinPathExtraData ;
typedef TYPE_5__ JoinCostWorkspace ;


 int Assert (int ) ;
 scalar_t__ PATH_PARAM_BY_PARENT (TYPE_3__*,TYPE_2__*) ;
 int add_partial_path (TYPE_2__*,TYPE_3__*) ;
 int add_partial_path_precheck (TYPE_2__*,int ,int *) ;
 int bms_is_empty (int ) ;
 int bms_is_subset (scalar_t__,scalar_t__) ;
 scalar_t__ create_nestloop_path (int *,TYPE_2__*,int ,TYPE_5__*,TYPE_4__*,TYPE_3__*,TYPE_3__*,int ,int *,int *) ;
 int initial_cost_nestloop (int *,TYPE_5__*,int ,TYPE_3__*,TYPE_3__*,TYPE_4__*) ;
 TYPE_3__* reparameterize_path_by_child (int *,TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static void
try_partial_nestloop_path(PlannerInfo *root,
        RelOptInfo *joinrel,
        Path *outer_path,
        Path *inner_path,
        List *pathkeys,
        JoinType jointype,
        JoinPathExtraData *extra)
{
 JoinCostWorkspace workspace;







 Assert(bms_is_empty(joinrel->lateral_relids));
 if (inner_path->param_info != ((void*)0))
 {
  Relids inner_paramrels = inner_path->param_info->ppi_req_outer;
  RelOptInfo *outerrel = outer_path->parent;
  Relids outerrelids;






  if (outerrel->top_parent_relids)
   outerrelids = outerrel->top_parent_relids;
  else
   outerrelids = outerrel->relids;

  if (!bms_is_subset(inner_paramrels, outerrelids))
   return;
 }





 initial_cost_nestloop(root, &workspace, jointype,
        outer_path, inner_path, extra);
 if (!add_partial_path_precheck(joinrel, workspace.total_cost, pathkeys))
  return;





 if (PATH_PARAM_BY_PARENT(inner_path, outer_path->parent))
 {
  inner_path = reparameterize_path_by_child(root, inner_path,
              outer_path->parent);




  if (!inner_path)
   return;
 }


 add_partial_path(joinrel, (Path *)
      create_nestloop_path(root,
            joinrel,
            jointype,
            &workspace,
            extra,
            outer_path,
            inner_path,
            extra->restrictlist,
            pathkeys,
            ((void*)0)));
}
