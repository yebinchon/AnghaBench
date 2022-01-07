
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int assoc_context; } ;
typedef int MemoryContext ;
typedef TYPE_1__ ErrorData ;


 int Assert (int) ;
 int CHECK_STACK_DEPTH () ;
 int MemoryContextSwitchTo (int ) ;
 TYPE_1__* errordata ;
 size_t errordata_stack_depth ;
 int recursion_depth ;
 int set_backtrace (TYPE_1__*,int) ;

int
errbacktrace(void)
{
 ErrorData *edata = &errordata[errordata_stack_depth];
 MemoryContext oldcontext;

 Assert(0);

 recursion_depth++;
 CHECK_STACK_DEPTH();
 oldcontext = MemoryContextSwitchTo(edata->assoc_context);

 set_backtrace(edata, 1);

 MemoryContextSwitchTo(oldcontext);
 recursion_depth--;

 return 0;
}
