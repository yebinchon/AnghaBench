
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int PlannerGlobal ;


 int WRITE_BITMAPSET_FIELD (int ) ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_CHAR_FIELD (int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_UINT_FIELD (int ) ;
 int dependsOnRole ;
 int finalrowmarks ;
 int finalrtable ;
 int invalItems ;
 int lastPHId ;
 int lastPlanNodeId ;
 int lastRowMarkId ;
 int maxParallelHazard ;
 int parallelModeNeeded ;
 int parallelModeOK ;
 int paramExecTypes ;
 int relationOids ;
 int resultRelations ;
 int rewindPlanIDs ;
 int rootResultRelations ;
 int subplans ;
 int transientPlan ;

__attribute__((used)) static void
_outPlannerGlobal(StringInfo str, const PlannerGlobal *node)
{
 WRITE_NODE_TYPE("PLANNERGLOBAL");


 WRITE_NODE_FIELD(subplans);
 WRITE_BITMAPSET_FIELD(rewindPlanIDs);
 WRITE_NODE_FIELD(finalrtable);
 WRITE_NODE_FIELD(finalrowmarks);
 WRITE_NODE_FIELD(resultRelations);
 WRITE_NODE_FIELD(rootResultRelations);
 WRITE_NODE_FIELD(relationOids);
 WRITE_NODE_FIELD(invalItems);
 WRITE_NODE_FIELD(paramExecTypes);
 WRITE_UINT_FIELD(lastPHId);
 WRITE_UINT_FIELD(lastRowMarkId);
 WRITE_INT_FIELD(lastPlanNodeId);
 WRITE_BOOL_FIELD(transientPlan);
 WRITE_BOOL_FIELD(dependsOnRole);
 WRITE_BOOL_FIELD(parallelModeOK);
 WRITE_BOOL_FIELD(parallelModeNeeded);
 WRITE_CHAR_FIELD(maxParallelHazard);
}
