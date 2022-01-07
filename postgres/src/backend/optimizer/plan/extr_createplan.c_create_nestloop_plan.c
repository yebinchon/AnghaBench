
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_16__ ;
typedef struct TYPE_19__ TYPE_12__ ;


struct TYPE_23__ {int plan; } ;
struct TYPE_26__ {TYPE_3__ join; } ;
struct TYPE_20__ {scalar_t__ param_info; TYPE_1__* parent; } ;
struct TYPE_25__ {TYPE_16__ path; int inner_unique; int jointype; TYPE_12__* outerjoinpath; TYPE_12__* innerjoinpath; int * joinrestrictinfo; } ;
struct TYPE_24__ {int curOuterRels; } ;
struct TYPE_22__ {int relids; } ;
struct TYPE_21__ {int relids; } ;
struct TYPE_19__ {TYPE_2__* parent; } ;
typedef int Relids ;
typedef TYPE_4__ PlannerInfo ;
typedef int Plan ;
typedef int Node ;
typedef TYPE_5__ NestPath ;
typedef TYPE_6__ NestLoop ;
typedef int List ;


 scalar_t__ IS_OUTER_JOIN (int ) ;
 int * NIL ;
 int bms_free (int ) ;
 int bms_union (int ,int ) ;
 int * build_path_tlist (TYPE_4__*,TYPE_16__*) ;
 int copy_generic_path_info (int *,TYPE_16__*) ;
 int * create_plan_recurse (TYPE_4__*,TYPE_12__*,int ) ;
 int * extract_actual_clauses (int *,int) ;
 int extract_actual_join_clauses (int *,int ,int **,int **) ;
 int * identify_current_nestloop_params (TYPE_4__*,int ) ;
 TYPE_6__* make_nestloop (int *,int *,int *,int *,int *,int *,int ,int ) ;
 int * order_qual_clauses (TYPE_4__*,int *) ;
 scalar_t__ replace_nestloop_params (TYPE_4__*,int *) ;

__attribute__((used)) static NestLoop *
create_nestloop_plan(PlannerInfo *root,
      NestPath *best_path)
{
 NestLoop *join_plan;
 Plan *outer_plan;
 Plan *inner_plan;
 List *tlist = build_path_tlist(root, &best_path->path);
 List *joinrestrictclauses = best_path->joinrestrictinfo;
 List *joinclauses;
 List *otherclauses;
 Relids outerrelids;
 List *nestParams;
 Relids saveOuterRels = root->curOuterRels;


 outer_plan = create_plan_recurse(root, best_path->outerjoinpath, 0);


 root->curOuterRels = bms_union(root->curOuterRels,
           best_path->outerjoinpath->parent->relids);

 inner_plan = create_plan_recurse(root, best_path->innerjoinpath, 0);


 bms_free(root->curOuterRels);
 root->curOuterRels = saveOuterRels;


 joinrestrictclauses = order_qual_clauses(root, joinrestrictclauses);



 if (IS_OUTER_JOIN(best_path->jointype))
 {
  extract_actual_join_clauses(joinrestrictclauses,
         best_path->path.parent->relids,
         &joinclauses, &otherclauses);
 }
 else
 {

  joinclauses = extract_actual_clauses(joinrestrictclauses, 0);
  otherclauses = NIL;
 }


 if (best_path->path.param_info)
 {
  joinclauses = (List *)
   replace_nestloop_params(root, (Node *) joinclauses);
  otherclauses = (List *)
   replace_nestloop_params(root, (Node *) otherclauses);
 }





 outerrelids = best_path->outerjoinpath->parent->relids;
 nestParams = identify_current_nestloop_params(root, outerrelids);

 join_plan = make_nestloop(tlist,
         joinclauses,
         otherclauses,
         nestParams,
         outer_plan,
         inner_plan,
         best_path->jointype,
         best_path->inner_unique);

 copy_generic_path_info(&join_plan->join.plan, &best_path->path);

 return join_plan;
}
