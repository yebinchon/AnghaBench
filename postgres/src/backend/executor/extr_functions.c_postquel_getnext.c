
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_8__ {TYPE_6__* qd; scalar_t__ lazyEval; } ;
typedef TYPE_2__ execution_state ;
struct TYPE_10__ {scalar_t__ operation; TYPE_1__* estate; int dest; int queryEnv; int params; int plannedstmt; } ;
struct TYPE_9__ {int returnsSet; int src; } ;
struct TYPE_7__ {scalar_t__ es_processed; } ;
typedef TYPE_3__* SQLFunctionCachePtr ;


 scalar_t__ CMD_UTILITY ;
 int ExecutorRun (TYPE_6__*,int ,scalar_t__,int) ;
 int ForwardScanDirection ;
 int PROCESS_UTILITY_QUERY ;
 int ProcessUtility (int ,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static bool
postquel_getnext(execution_state *es, SQLFunctionCachePtr fcache)
{
 bool result;

 if (es->qd->operation == CMD_UTILITY)
 {
  ProcessUtility(es->qd->plannedstmt,
        fcache->src,
        PROCESS_UTILITY_QUERY,
        es->qd->params,
        es->qd->queryEnv,
        es->qd->dest,
        ((void*)0));
  result = 1;
 }
 else
 {

  uint64 count = (es->lazyEval) ? 1 : 0;

  ExecutorRun(es->qd, ForwardScanDirection, count, !fcache->returnsSet || !es->lazyEval);





  result = (count == 0 || es->qd->estate->es_processed == 0);
 }

 return result;
}
