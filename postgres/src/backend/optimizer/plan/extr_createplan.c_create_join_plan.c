
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pathtype; } ;
struct TYPE_6__ {int joinrestrictinfo; TYPE_1__ path; } ;
typedef int PlannerInfo ;
typedef int Plan ;
typedef int Path ;
typedef int NestPath ;
typedef int MergePath ;
typedef int List ;
typedef TYPE_2__ JoinPath ;
typedef int HashPath ;


 int ERROR ;
 scalar_t__ NIL ;



 int * create_gating_plan (int *,int *,int *,int *) ;
 scalar_t__ create_hashjoin_plan (int *,int *) ;
 scalar_t__ create_mergejoin_plan (int *,int *) ;
 scalar_t__ create_nestloop_plan (int *,int *) ;
 int elog (int ,char*,int) ;
 int get_actual_clauses (scalar_t__) ;
 int * get_gating_quals (int *,int ) ;
 scalar_t__ get_loc_restrictinfo (TYPE_2__*) ;
 int get_qpqual (int ) ;
 int list_concat (int ,int ) ;
 int set_qpqual (int ,int ) ;

__attribute__((used)) static Plan *
create_join_plan(PlannerInfo *root, JoinPath *best_path)
{
 Plan *plan;
 List *gating_clauses;

 switch (best_path->path.pathtype)
 {
  case 129:
   plan = (Plan *) create_mergejoin_plan(root,
              (MergePath *) best_path);
   break;
  case 130:
   plan = (Plan *) create_hashjoin_plan(root,
             (HashPath *) best_path);
   break;
  case 128:
   plan = (Plan *) create_nestloop_plan(root,
             (NestPath *) best_path);
   break;
  default:
   elog(ERROR, "unrecognized node type: %d",
     (int) best_path->path.pathtype);
   plan = ((void*)0);
   break;
 }






 gating_clauses = get_gating_quals(root, best_path->joinrestrictinfo);
 if (gating_clauses)
  plan = create_gating_plan(root, (Path *) best_path, plan,
          gating_clauses);
 return plan;
}
