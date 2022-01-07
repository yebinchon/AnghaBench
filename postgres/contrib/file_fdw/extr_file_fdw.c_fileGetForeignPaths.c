
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int lateral_relids; int rows; scalar_t__ fdw_private; } ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int Path ;
typedef int Oid ;
typedef int Node ;
typedef int List ;
typedef int FileFdwPlanState ;
typedef int Cost ;


 int * NIL ;
 int add_path (TYPE_1__*,int *) ;
 scalar_t__ check_selective_binary_conversion (TYPE_1__*,int ,int **) ;
 scalar_t__ create_foreignscan_path (int *,TYPE_1__*,int *,int ,int ,int ,int *,int ,int *,int *) ;
 int estimate_costs (int *,TYPE_1__*,int *,int *,int *) ;
 int * list_make1 (int ) ;
 int makeDefElem (char*,int *,int) ;

__attribute__((used)) static void
fileGetForeignPaths(PlannerInfo *root,
     RelOptInfo *baserel,
     Oid foreigntableid)
{
 FileFdwPlanState *fdw_private = (FileFdwPlanState *) baserel->fdw_private;
 Cost startup_cost;
 Cost total_cost;
 List *columns;
 List *coptions = NIL;


 if (check_selective_binary_conversion(baserel,
            foreigntableid,
            &columns))
  coptions = list_make1(makeDefElem("convert_selectively",
            (Node *) columns, -1));


 estimate_costs(root, baserel, fdw_private,
       &startup_cost, &total_cost);
 add_path(baserel, (Path *)
    create_foreignscan_path(root, baserel,
          ((void*)0),
          baserel->rows,
          startup_cost,
          total_cost,
          NIL,
          baserel->lateral_relids,
          ((void*)0),
          coptions));






}
