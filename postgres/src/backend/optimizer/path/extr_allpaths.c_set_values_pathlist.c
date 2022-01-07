
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lateral_relids; } ;
typedef int Relids ;
typedef TYPE_1__ RelOptInfo ;
typedef int RangeTblEntry ;
typedef int PlannerInfo ;


 int add_path (TYPE_1__*,int ) ;
 int create_valuesscan_path (int *,TYPE_1__*,int ) ;

__attribute__((used)) static void
set_values_pathlist(PlannerInfo *root, RelOptInfo *rel, RangeTblEntry *rte)
{
 Relids required_outer;






 required_outer = rel->lateral_relids;


 add_path(rel, create_valuesscan_path(root, rel, required_outer));
}
