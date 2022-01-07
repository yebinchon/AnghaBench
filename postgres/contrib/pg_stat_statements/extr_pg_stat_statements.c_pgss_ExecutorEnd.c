
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_11__ {double total; int bufusage; } ;
struct TYPE_10__ {TYPE_7__* totaltime; TYPE_1__* estate; TYPE_2__* plannedstmt; int sourceText; } ;
struct TYPE_9__ {scalar_t__ queryId; int stmt_len; int stmt_location; } ;
struct TYPE_8__ {int es_processed; } ;
typedef TYPE_3__ QueryDesc ;


 int InstrEndLoop (TYPE_7__*) ;
 scalar_t__ UINT64CONST (int ) ;
 scalar_t__ pgss_enabled () ;
 int pgss_store (int ,scalar_t__,int ,int ,double,int ,int *,int *) ;
 int prev_ExecutorEnd (TYPE_3__*) ;
 int standard_ExecutorEnd (TYPE_3__*) ;

__attribute__((used)) static void
pgss_ExecutorEnd(QueryDesc *queryDesc)
{
 uint64 queryId = queryDesc->plannedstmt->queryId;

 if (queryId != UINT64CONST(0) && queryDesc->totaltime && pgss_enabled())
 {




  InstrEndLoop(queryDesc->totaltime);

  pgss_store(queryDesc->sourceText,
       queryId,
       queryDesc->plannedstmt->stmt_location,
       queryDesc->plannedstmt->stmt_len,
       queryDesc->totaltime->total * 1000.0,
       queryDesc->estate->es_processed,
       &queryDesc->totaltime->bufusage,
       ((void*)0));
 }

 if (prev_ExecutorEnd)
  prev_ExecutorEnd(queryDesc);
 else
  standard_ExecutorEnd(queryDesc);
}
