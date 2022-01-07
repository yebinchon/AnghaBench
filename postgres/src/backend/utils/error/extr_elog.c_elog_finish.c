
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* message_id; int domain; scalar_t__ funcname; int backtrace; int assoc_context; int lineno; int filename; int saved_errno; } ;
typedef int MemoryContext ;
typedef TYPE_1__ ErrorData ;


 int CHECK_STACK_DEPTH () ;
 int EVALUATE_MESSAGE (int ,int ,int,int) ;
 int MemoryContextSwitchTo (int ) ;
 int errfinish (int ) ;
 int errno ;
 TYPE_1__* errordata ;
 size_t errordata_stack_depth ;
 int errstart (int,int ,int ,scalar_t__,int *) ;
 scalar_t__ matches_backtrace_functions (scalar_t__) ;
 int message ;
 int recursion_depth ;
 int set_backtrace (TYPE_1__*,int) ;

void
elog_finish(int elevel, const char *fmt,...)
{
 ErrorData *edata = &errordata[errordata_stack_depth];
 MemoryContext oldcontext;

 CHECK_STACK_DEPTH();




 errordata_stack_depth--;
 errno = edata->saved_errno;
 if (!errstart(elevel, edata->filename, edata->lineno, edata->funcname, ((void*)0)))
  return;




 recursion_depth++;
 oldcontext = MemoryContextSwitchTo(edata->assoc_context);

 if (!edata->backtrace &&
  edata->funcname &&
  matches_backtrace_functions(edata->funcname))
  set_backtrace(edata, 2);

 edata->message_id = fmt;
 EVALUATE_MESSAGE(edata->domain, message, 0, 0);

 MemoryContextSwitchTo(oldcontext);
 recursion_depth--;




 errfinish(0);
}
