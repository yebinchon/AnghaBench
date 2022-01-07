
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


struct TYPE_17__ {int query_level; int all_baserels; } ;
struct TYPE_16__ {TYPE_1__* tablesample; } ;
struct TYPE_15__ {int lateral_relids; } ;
struct TYPE_14__ {int tsmhandler; } ;
struct TYPE_13__ {int repeatable_across_scans; } ;
typedef int Relids ;
typedef TYPE_2__ RelOptInfo ;
typedef TYPE_3__ RangeTblEntry ;
typedef TYPE_4__ PlannerInfo ;
typedef int Path ;


 scalar_t__ BMS_SINGLETON ;
 TYPE_12__* GetTsmRoutine (int ) ;
 int add_path (TYPE_2__*,int *) ;
 scalar_t__ bms_membership (int ) ;
 scalar_t__ create_material_path (TYPE_2__*,int *) ;
 int * create_samplescan_path (TYPE_4__*,TYPE_2__*,int ) ;

__attribute__((used)) static void
set_tablesample_rel_pathlist(PlannerInfo *root, RelOptInfo *rel, RangeTblEntry *rte)
{
 Relids required_outer;
 Path *path;






 required_outer = rel->lateral_relids;


 path = create_samplescan_path(root, rel, required_outer);
 if ((root->query_level > 1 ||
   bms_membership(root->all_baserels) != BMS_SINGLETON) &&
  !(GetTsmRoutine(rte->tablesample->tsmhandler)->repeatable_across_scans))
 {
  path = (Path *) create_material_path(rel, path);
 }

 add_path(rel, path);


}
