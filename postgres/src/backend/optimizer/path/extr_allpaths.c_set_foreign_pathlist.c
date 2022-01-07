
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int relid; } ;
struct TYPE_8__ {TYPE_1__* fdwroutine; } ;
struct TYPE_7__ {int (* GetForeignPaths ) (int *,TYPE_2__*,int ) ;} ;
typedef TYPE_2__ RelOptInfo ;
typedef TYPE_3__ RangeTblEntry ;
typedef int PlannerInfo ;


 int stub1 (int *,TYPE_2__*,int ) ;

__attribute__((used)) static void
set_foreign_pathlist(PlannerInfo *root, RelOptInfo *rel, RangeTblEntry *rte)
{

 rel->fdwroutine->GetForeignPaths(root, rel, rte->relid);
}
