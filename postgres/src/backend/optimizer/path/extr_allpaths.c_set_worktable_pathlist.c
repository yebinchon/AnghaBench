
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int rows; } ;
struct TYPE_15__ {TYPE_4__* non_recursive_path; struct TYPE_15__* parent_root; } ;
struct TYPE_14__ {scalar_t__ ctelevelsup; int ctename; } ;
struct TYPE_13__ {int lateral_relids; } ;
typedef int Relids ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ RangeTblEntry ;
typedef TYPE_3__ PlannerInfo ;
typedef TYPE_4__ Path ;
typedef scalar_t__ Index ;


 int ERROR ;
 int add_path (TYPE_1__*,int ) ;
 int create_worktablescan_path (TYPE_3__*,TYPE_1__*,int ) ;
 int elog (int ,char*,int ) ;
 int set_cte_size_estimates (TYPE_3__*,TYPE_1__*,int ) ;

__attribute__((used)) static void
set_worktable_pathlist(PlannerInfo *root, RelOptInfo *rel, RangeTblEntry *rte)
{
 Path *ctepath;
 PlannerInfo *cteroot;
 Index levelsup;
 Relids required_outer;






 levelsup = rte->ctelevelsup;
 if (levelsup == 0)
  elog(ERROR, "bad levelsup for CTE \"%s\"", rte->ctename);
 levelsup--;
 cteroot = root;
 while (levelsup-- > 0)
 {
  cteroot = cteroot->parent_root;
  if (!cteroot)
   elog(ERROR, "bad levelsup for CTE \"%s\"", rte->ctename);
 }
 ctepath = cteroot->non_recursive_path;
 if (!ctepath)
  elog(ERROR, "could not find path for CTE \"%s\"", rte->ctename);


 set_cte_size_estimates(root, rel, ctepath->rows);







 required_outer = rel->lateral_relids;


 add_path(rel, create_worktablescan_path(root, rel, required_outer));
}
