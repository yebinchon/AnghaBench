
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int relid; } ;
struct TYPE_9__ {int rows; TYPE_1__* fdwroutine; } ;
struct TYPE_8__ {int (* GetForeignRelSize ) (int *,TYPE_2__*,int ) ;} ;
typedef TYPE_2__ RelOptInfo ;
typedef TYPE_3__ RangeTblEntry ;
typedef int PlannerInfo ;


 int clamp_row_est (int ) ;
 int set_foreign_size_estimates (int *,TYPE_2__*) ;
 int stub1 (int *,TYPE_2__*,int ) ;

__attribute__((used)) static void
set_foreign_size(PlannerInfo *root, RelOptInfo *rel, RangeTblEntry *rte)
{

 set_foreign_size_estimates(root, rel);


 rel->fdwroutine->GetForeignRelSize(root, rel, rte->relid);


 rel->rows = clamp_row_est(rel->rows);
}
