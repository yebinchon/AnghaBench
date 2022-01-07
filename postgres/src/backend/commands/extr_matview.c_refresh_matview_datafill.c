
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_10__ {TYPE_1__* estate; } ;
struct TYPE_9__ {int es_processed; } ;
typedef TYPE_2__ QueryDesc ;
typedef int Query ;
typedef int PlannedStmt ;
typedef int List ;
typedef int DestReceiver ;


 int AcquireRewriteLocks (int *,int,int) ;
 int CHECK_FOR_INTERRUPTS () ;
 TYPE_2__* CreateQueryDesc (int *,char const*,int ,int ,int *,int *,int *,int ) ;
 int ERROR ;
 int ExecutorEnd (TYPE_2__*) ;
 int ExecutorFinish (TYPE_2__*) ;
 int ExecutorRun (TYPE_2__*,int ,long,int) ;
 int ExecutorStart (TYPE_2__*,int ) ;
 int ForwardScanDirection ;
 int FreeQueryDesc (TYPE_2__*) ;
 int GetActiveSnapshot () ;
 int InvalidSnapshot ;
 int PopActiveSnapshot () ;
 int PushCopiedSnapshot (int ) ;
 int * QueryRewrite (int *) ;
 int UpdateActiveSnapshotCommandId () ;
 int * copyObject (int *) ;
 int elog (int ,char*) ;
 scalar_t__ linitial (int *) ;
 int list_length (int *) ;
 int * pg_plan_query (int *,int ,int *) ;

__attribute__((used)) static uint64
refresh_matview_datafill(DestReceiver *dest, Query *query,
       const char *queryString)
{
 List *rewritten;
 PlannedStmt *plan;
 QueryDesc *queryDesc;
 Query *copied_query;
 uint64 processed;


 copied_query = copyObject(query);
 AcquireRewriteLocks(copied_query, 1, 0);
 rewritten = QueryRewrite(copied_query);


 if (list_length(rewritten) != 1)
  elog(ERROR, "unexpected rewrite result for REFRESH MATERIALIZED VIEW");
 query = (Query *) linitial(rewritten);


 CHECK_FOR_INTERRUPTS();


 plan = pg_plan_query(query, 0, ((void*)0));







 PushCopiedSnapshot(GetActiveSnapshot());
 UpdateActiveSnapshotCommandId();


 queryDesc = CreateQueryDesc(plan, queryString,
        GetActiveSnapshot(), InvalidSnapshot,
        dest, ((void*)0), ((void*)0), 0);


 ExecutorStart(queryDesc, 0);


 ExecutorRun(queryDesc, ForwardScanDirection, 0L, 1);

 processed = queryDesc->estate->es_processed;


 ExecutorFinish(queryDesc);
 ExecutorEnd(queryDesc);

 FreeQueryDesc(queryDesc);

 PopActiveSnapshot();

 return processed;
}
