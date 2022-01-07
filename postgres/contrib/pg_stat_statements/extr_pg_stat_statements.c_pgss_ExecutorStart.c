
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * totaltime; TYPE_2__* estate; TYPE_1__* plannedstmt; } ;
struct TYPE_8__ {int es_query_cxt; } ;
struct TYPE_7__ {scalar_t__ queryId; } ;
typedef TYPE_3__ QueryDesc ;
typedef int MemoryContext ;


 int INSTRUMENT_ALL ;
 int * InstrAlloc (int,int ) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ UINT64CONST (int ) ;
 scalar_t__ pgss_enabled () ;
 int prev_ExecutorStart (TYPE_3__*,int) ;
 int standard_ExecutorStart (TYPE_3__*,int) ;

__attribute__((used)) static void
pgss_ExecutorStart(QueryDesc *queryDesc, int eflags)
{
 if (prev_ExecutorStart)
  prev_ExecutorStart(queryDesc, eflags);
 else
  standard_ExecutorStart(queryDesc, eflags);






 if (pgss_enabled() && queryDesc->plannedstmt->queryId != UINT64CONST(0))
 {





  if (queryDesc->totaltime == ((void*)0))
  {
   MemoryContext oldcxt;

   oldcxt = MemoryContextSwitchTo(queryDesc->estate->es_query_cxt);
   queryDesc->totaltime = InstrAlloc(1, INSTRUMENT_ALL);
   MemoryContextSwitchTo(oldcxt);
  }
 }
}
