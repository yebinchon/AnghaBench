
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ commandType; } ;
typedef TYPE_1__ Query ;
typedef int PlannedStmt ;
typedef int ParamListInfo ;


 int ActiveSnapshotSet () ;
 int Assert (int ) ;
 scalar_t__ CMD_UTILITY ;
 int Debug_pretty_print ;
 scalar_t__ Debug_print_plan ;
 int LOG ;
 int ResetUsage () ;
 int ShowUsage (char*) ;
 int TRACE_POSTGRESQL_QUERY_PLAN_DONE () ;
 int TRACE_POSTGRESQL_QUERY_PLAN_START () ;
 int WARNING ;
 int * copyObject (int *) ;
 int elog (int ,char*) ;
 int elog_node_display (int ,char*,int *,int ) ;
 int equal (int *,int *) ;
 scalar_t__ log_planner_stats ;
 char* nodeToString (int *) ;
 int pfree (char*) ;
 int * planner (TYPE_1__*,int,int ) ;
 int * stringToNodeWithLocations (char*) ;

PlannedStmt *
pg_plan_query(Query *querytree, int cursorOptions, ParamListInfo boundParams)
{
 PlannedStmt *plan;


 if (querytree->commandType == CMD_UTILITY)
  return ((void*)0);


 Assert(ActiveSnapshotSet());

 TRACE_POSTGRESQL_QUERY_PLAN_START();

 if (log_planner_stats)
  ResetUsage();


 plan = planner(querytree, cursorOptions, boundParams);

 if (log_planner_stats)
  ShowUsage("PLANNER STATISTICS");
 if (Debug_print_plan)
  elog_node_display(LOG, "plan", plan, Debug_pretty_print);

 TRACE_POSTGRESQL_QUERY_PLAN_DONE();

 return plan;
}
