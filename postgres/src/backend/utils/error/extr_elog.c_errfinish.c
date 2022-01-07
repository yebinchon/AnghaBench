
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int arg; int (* callback ) (int ) ;struct TYPE_7__* previous; } ;
struct TYPE_6__ {int elevel; scalar_t__ internalquery; scalar_t__ constraint_name; scalar_t__ datatype_name; scalar_t__ column_name; scalar_t__ table_name; scalar_t__ schema_name; scalar_t__ backtrace; scalar_t__ context; scalar_t__ hint; scalar_t__ detail_log; scalar_t__ detail; scalar_t__ message; scalar_t__ funcname; } ;
typedef int MemoryContext ;
typedef TYPE_1__ ErrorData ;
typedef TYPE_2__ ErrorContextCallback ;


 int CHECK_FOR_INTERRUPTS () ;
 int CHECK_STACK_DEPTH () ;
 scalar_t__ CritSectionCount ;
 scalar_t__ DestNone ;
 scalar_t__ DestRemote ;
 int ERROR ;
 int EmitErrorReport () ;
 int ErrorContext ;
 int FATAL ;
 scalar_t__ InterruptHoldoffCount ;
 int MemoryContextSwitchTo (int ) ;
 int PANIC ;
 int PG_RE_THROW () ;
 int * PG_exception_stack ;
 scalar_t__ QueryCancelHoldoffCount ;
 int abort () ;
 scalar_t__ backtrace_functions ;
 TYPE_2__* error_context_stack ;
 TYPE_1__* errordata ;
 size_t errordata_stack_depth ;
 int fflush (int ) ;
 scalar_t__ matches_backtrace_functions (scalar_t__) ;
 int pfree (scalar_t__) ;
 int pq_endcopyout (int) ;
 int proc_exit (int) ;
 int recursion_depth ;
 int set_backtrace (TYPE_1__*,int) ;
 int stderr ;
 int stdout ;
 int stub1 (int ) ;
 scalar_t__ whereToSendOutput ;

void
errfinish(int dummy,...)
{
 ErrorData *edata = &errordata[errordata_stack_depth];
 int elevel;
 MemoryContext oldcontext;
 ErrorContextCallback *econtext;

 recursion_depth++;
 CHECK_STACK_DEPTH();
 elevel = edata->elevel;





 oldcontext = MemoryContextSwitchTo(ErrorContext);

 if (!edata->backtrace &&
  edata->funcname &&
  backtrace_functions &&
  matches_backtrace_functions(edata->funcname))
  set_backtrace(edata, 2);






 for (econtext = error_context_stack;
   econtext != ((void*)0);
   econtext = econtext->previous)
  econtext->callback(econtext->arg);





 if (elevel == ERROR)
 {
  InterruptHoldoffCount = 0;
  QueryCancelHoldoffCount = 0;

  CritSectionCount = 0;






  recursion_depth--;
  PG_RE_THROW();
 }
 if (elevel >= FATAL && whereToSendOutput == DestRemote)
  pq_endcopyout(1);


 EmitErrorReport();


 if (edata->message)
  pfree(edata->message);
 if (edata->detail)
  pfree(edata->detail);
 if (edata->detail_log)
  pfree(edata->detail_log);
 if (edata->hint)
  pfree(edata->hint);
 if (edata->context)
  pfree(edata->context);
 if (edata->backtrace)
  pfree(edata->backtrace);
 if (edata->schema_name)
  pfree(edata->schema_name);
 if (edata->table_name)
  pfree(edata->table_name);
 if (edata->column_name)
  pfree(edata->column_name);
 if (edata->datatype_name)
  pfree(edata->datatype_name);
 if (edata->constraint_name)
  pfree(edata->constraint_name);
 if (edata->internalquery)
  pfree(edata->internalquery);

 errordata_stack_depth--;


 MemoryContextSwitchTo(oldcontext);
 recursion_depth--;




 if (elevel == FATAL)
 {






  if (PG_exception_stack == ((void*)0) && whereToSendOutput == DestRemote)
   whereToSendOutput = DestNone;







  fflush(stdout);
  fflush(stderr);






  proc_exit(1);
 }

 if (elevel >= PANIC)
 {







  fflush(stdout);
  fflush(stderr);
  abort();
 }






 CHECK_FOR_INTERRUPTS();
}
