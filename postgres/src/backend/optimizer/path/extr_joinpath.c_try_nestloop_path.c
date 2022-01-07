
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


struct TYPE_30__ {int total_cost; int startup_cost; } ;
struct TYPE_29__ {int restrictlist; int param_source_rels; } ;
struct TYPE_28__ {TYPE_1__* parent; } ;
struct TYPE_27__ {scalar_t__ relids; scalar_t__ top_parent_relids; } ;
typedef scalar_t__ Relids ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;
typedef TYPE_2__ Path ;
typedef int List ;
typedef int JoinType ;
typedef TYPE_3__ JoinPathExtraData ;
typedef TYPE_4__ JoinCostWorkspace ;


 scalar_t__ PATH_PARAM_BY_PARENT (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ PATH_REQ_OUTER (TYPE_2__*) ;
 int add_path (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ add_path_precheck (TYPE_1__*,int ,int ,int *,scalar_t__) ;
 int allow_star_schema_join (int *,scalar_t__,scalar_t__) ;
 int bms_free (scalar_t__) ;
 int bms_overlap (scalar_t__,int ) ;
 scalar_t__ calc_nestloop_required_outer (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ create_nestloop_path (int *,TYPE_1__*,int ,TYPE_4__*,TYPE_3__*,TYPE_2__*,TYPE_2__*,int ,int *,scalar_t__) ;
 scalar_t__ have_dangerous_phv (int *,scalar_t__,scalar_t__) ;
 int initial_cost_nestloop (int *,TYPE_4__*,int ,TYPE_2__*,TYPE_2__*,TYPE_3__*) ;
 TYPE_2__* reparameterize_path_by_child (int *,TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static void
try_nestloop_path(PlannerInfo *root,
      RelOptInfo *joinrel,
      Path *outer_path,
      Path *inner_path,
      List *pathkeys,
      JoinType jointype,
      JoinPathExtraData *extra)
{
 Relids required_outer;
 JoinCostWorkspace workspace;
 RelOptInfo *innerrel = inner_path->parent;
 RelOptInfo *outerrel = outer_path->parent;
 Relids innerrelids;
 Relids outerrelids;
 Relids inner_paramrels = PATH_REQ_OUTER(inner_path);
 Relids outer_paramrels = PATH_REQ_OUTER(outer_path);





 if (innerrel->top_parent_relids)
  innerrelids = innerrel->top_parent_relids;
 else
  innerrelids = innerrel->relids;

 if (outerrel->top_parent_relids)
  outerrelids = outerrel->top_parent_relids;
 else
  outerrelids = outerrel->relids;
 required_outer = calc_nestloop_required_outer(outerrelids, outer_paramrels,
              innerrelids, inner_paramrels);
 if (required_outer &&
  ((!bms_overlap(required_outer, extra->param_source_rels) &&
    !allow_star_schema_join(root, outerrelids, inner_paramrels)) ||
   have_dangerous_phv(root, outerrelids, inner_paramrels)))
 {

  bms_free(required_outer);
  return;
 }
 initial_cost_nestloop(root, &workspace, jointype,
        outer_path, inner_path, extra);

 if (add_path_precheck(joinrel,
        workspace.startup_cost, workspace.total_cost,
        pathkeys, required_outer))
 {





  if (PATH_PARAM_BY_PARENT(inner_path, outer_path->parent))
  {
   inner_path = reparameterize_path_by_child(root, inner_path,
               outer_path->parent);





   if (!inner_path)
   {
    bms_free(required_outer);
    return;
   }
  }

  add_path(joinrel, (Path *)
     create_nestloop_path(root,
           joinrel,
           jointype,
           &workspace,
           extra,
           outer_path,
           inner_path,
           extra->restrictlist,
           pathkeys,
           required_outer));
 }
 else
 {

  bms_free(required_outer);
 }
}
