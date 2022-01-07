
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* message_id; int domain; int assoc_context; } ;
typedef int MemoryContext ;
typedef TYPE_1__ ErrorData ;


 int CHECK_STACK_DEPTH () ;
 int EVALUATE_MESSAGE (int ,int ,int,int) ;
 int MemoryContextSwitchTo (int ) ;
 TYPE_1__* errordata ;
 size_t errordata_stack_depth ;
 int message ;
 int recursion_depth ;

int
errmsg_internal(const char *fmt,...)
{
 ErrorData *edata = &errordata[errordata_stack_depth];
 MemoryContext oldcontext;

 recursion_depth++;
 CHECK_STACK_DEPTH();
 oldcontext = MemoryContextSwitchTo(edata->assoc_context);

 edata->message_id = fmt;
 EVALUATE_MESSAGE(edata->domain, message, 0, 0);

 MemoryContextSwitchTo(oldcontext);
 recursion_depth--;
 return 0;
}
