
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int commandType; } ;
struct TYPE_5__ {char const* sourceText; int instrument_options; int already_executed; int * totaltime; int * planstate; int * estate; int * tupDesc; int * queryEnv; int params; int * dest; void* crosscheck_snapshot; void* snapshot; TYPE_2__* plannedstmt; int operation; } ;
typedef int Snapshot ;
typedef int QueryEnvironment ;
typedef TYPE_1__ QueryDesc ;
typedef TYPE_2__ PlannedStmt ;
typedef int ParamListInfo ;
typedef int DestReceiver ;


 void* RegisterSnapshot (int ) ;
 scalar_t__ palloc (int) ;

QueryDesc *
CreateQueryDesc(PlannedStmt *plannedstmt,
    const char *sourceText,
    Snapshot snapshot,
    Snapshot crosscheck_snapshot,
    DestReceiver *dest,
    ParamListInfo params,
    QueryEnvironment *queryEnv,
    int instrument_options)
{
 QueryDesc *qd = (QueryDesc *) palloc(sizeof(QueryDesc));

 qd->operation = plannedstmt->commandType;
 qd->plannedstmt = plannedstmt;
 qd->sourceText = sourceText;
 qd->snapshot = RegisterSnapshot(snapshot);

 qd->crosscheck_snapshot = RegisterSnapshot(crosscheck_snapshot);
 qd->dest = dest;
 qd->params = params;
 qd->queryEnv = queryEnv;
 qd->instrument_options = instrument_options;


 qd->tupDesc = ((void*)0);
 qd->estate = ((void*)0);
 qd->planstate = ((void*)0);
 qd->totaltime = ((void*)0);


 qd->already_executed = 0;

 return qd;
}
