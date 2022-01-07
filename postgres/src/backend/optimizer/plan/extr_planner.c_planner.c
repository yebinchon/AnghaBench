
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Query ;
typedef int PlannedStmt ;
typedef int ParamListInfo ;


 int * planner_hook (int *,int,int ) ;
 int * standard_planner (int *,int,int ) ;
 int * stub1 (int *,int,int ) ;

PlannedStmt *
planner(Query *parse, int cursorOptions, ParamListInfo boundParams)
{
 PlannedStmt *result;

 if (planner_hook)
  result = (*planner_hook) (parse, cursorOptions, boundParams);
 else
  result = standard_planner(parse, cursorOptions, boundParams);
 return result;
}
