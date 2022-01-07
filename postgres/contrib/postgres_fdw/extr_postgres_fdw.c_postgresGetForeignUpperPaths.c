
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int UpperRelationKind ;
struct TYPE_12__ {int pushdown_safe; int stage; } ;
struct TYPE_11__ {TYPE_2__* fdw_private; } ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;
typedef TYPE_2__ PgFdwRelationInfo ;
typedef int GroupPathExtraData ;
typedef int FinalPathExtraData ;


 int ERROR ;



 int add_foreign_final_paths (int *,TYPE_1__*,TYPE_1__*,int *) ;
 int add_foreign_grouping_paths (int *,TYPE_1__*,TYPE_1__*,int *) ;
 int add_foreign_ordered_paths (int *,TYPE_1__*,TYPE_1__*) ;
 int elog (int ,char*,int) ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static void
postgresGetForeignUpperPaths(PlannerInfo *root, UpperRelationKind stage,
        RelOptInfo *input_rel, RelOptInfo *output_rel,
        void *extra)
{
 PgFdwRelationInfo *fpinfo;





 if (!input_rel->fdw_private ||
  !((PgFdwRelationInfo *) input_rel->fdw_private)->pushdown_safe)
  return;


 if ((stage != 129 &&
   stage != 128 &&
   stage != 130) ||
  output_rel->fdw_private)
  return;

 fpinfo = (PgFdwRelationInfo *) palloc0(sizeof(PgFdwRelationInfo));
 fpinfo->pushdown_safe = 0;
 fpinfo->stage = stage;
 output_rel->fdw_private = fpinfo;

 switch (stage)
 {
  case 129:
   add_foreign_grouping_paths(root, input_rel, output_rel,
            (GroupPathExtraData *) extra);
   break;
  case 128:
   add_foreign_ordered_paths(root, input_rel, output_rel);
   break;
  case 130:
   add_foreign_final_paths(root, input_rel, output_rel,
         (FinalPathExtraData *) extra);
   break;
  default:
   elog(ERROR, "unexpected upper relation: %d", (int) stage);
   break;
 }
}
