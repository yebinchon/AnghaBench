
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * totaltime; TYPE_1__* estate; int instrument_options; } ;
struct TYPE_6__ {int es_query_cxt; } ;
typedef TYPE_2__ QueryDesc ;
typedef int MemoryContext ;


 int EXEC_FLAG_EXPLAIN_ONLY ;
 int INSTRUMENT_ALL ;
 int INSTRUMENT_BUFFERS ;
 int INSTRUMENT_ROWS ;
 int INSTRUMENT_TIMER ;
 int * InstrAlloc (int,int ) ;
 int IsParallelWorker () ;
 scalar_t__ MAX_RANDOM_VALUE ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ auto_explain_enabled () ;
 scalar_t__ auto_explain_log_analyze ;
 scalar_t__ auto_explain_log_buffers ;
 scalar_t__ auto_explain_log_min_duration ;
 scalar_t__ auto_explain_log_timing ;
 double auto_explain_sample_rate ;
 int current_query_sampled ;
 scalar_t__ nesting_level ;
 int prev_ExecutorStart (TYPE_2__*,int) ;
 double random () ;
 int standard_ExecutorStart (TYPE_2__*,int) ;

__attribute__((used)) static void
explain_ExecutorStart(QueryDesc *queryDesc, int eflags)
{
 if (nesting_level == 0)
 {
  if (auto_explain_log_min_duration >= 0 && !IsParallelWorker())
   current_query_sampled = (random() < auto_explain_sample_rate *
          ((double) MAX_RANDOM_VALUE + 1));
  else
   current_query_sampled = 0;
 }

 if (auto_explain_enabled())
 {

  if (auto_explain_log_analyze && (eflags & EXEC_FLAG_EXPLAIN_ONLY) == 0)
  {
   if (auto_explain_log_timing)
    queryDesc->instrument_options |= INSTRUMENT_TIMER;
   else
    queryDesc->instrument_options |= INSTRUMENT_ROWS;
   if (auto_explain_log_buffers)
    queryDesc->instrument_options |= INSTRUMENT_BUFFERS;
  }
 }

 if (prev_ExecutorStart)
  prev_ExecutorStart(queryDesc, eflags);
 else
  standard_ExecutorStart(queryDesc, eflags);

 if (auto_explain_enabled())
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
