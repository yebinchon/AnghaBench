
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int PlannedStmt ;


 int CmdType ;
 int WRITE_BITMAPSET_FIELD (int ) ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_UINT64_FIELD (int ) ;
 int canSetTag ;
 int commandType ;
 int dependsOnRole ;
 int hasModifyingCTE ;
 int hasReturning ;
 int invalItems ;
 int jitFlags ;
 int parallelModeNeeded ;
 int paramExecTypes ;
 int planTree ;
 int queryId ;
 int relationOids ;
 int resultRelations ;
 int rewindPlanIDs ;
 int rootResultRelations ;
 int rowMarks ;
 int rtable ;
 int stmt_len ;
 int stmt_location ;
 int subplans ;
 int transientPlan ;
 int utilityStmt ;

__attribute__((used)) static void
_outPlannedStmt(StringInfo str, const PlannedStmt *node)
{
 WRITE_NODE_TYPE("PLANNEDSTMT");

 WRITE_ENUM_FIELD(commandType, CmdType);
 WRITE_UINT64_FIELD(queryId);
 WRITE_BOOL_FIELD(hasReturning);
 WRITE_BOOL_FIELD(hasModifyingCTE);
 WRITE_BOOL_FIELD(canSetTag);
 WRITE_BOOL_FIELD(transientPlan);
 WRITE_BOOL_FIELD(dependsOnRole);
 WRITE_BOOL_FIELD(parallelModeNeeded);
 WRITE_INT_FIELD(jitFlags);
 WRITE_NODE_FIELD(planTree);
 WRITE_NODE_FIELD(rtable);
 WRITE_NODE_FIELD(resultRelations);
 WRITE_NODE_FIELD(rootResultRelations);
 WRITE_NODE_FIELD(subplans);
 WRITE_BITMAPSET_FIELD(rewindPlanIDs);
 WRITE_NODE_FIELD(rowMarks);
 WRITE_NODE_FIELD(relationOids);
 WRITE_NODE_FIELD(invalItems);
 WRITE_NODE_FIELD(paramExecTypes);
 WRITE_NODE_FIELD(utilityStmt);
 WRITE_LOCATION_FIELD(stmt_location);
 WRITE_LOCATION_FIELD(stmt_len);
}
