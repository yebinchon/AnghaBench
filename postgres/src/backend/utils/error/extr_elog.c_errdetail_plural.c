
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int domain; int assoc_context; } ;
typedef int MemoryContext ;
typedef TYPE_1__ ErrorData ;


 int CHECK_STACK_DEPTH () ;
 int EVALUATE_MESSAGE_PLURAL (int ,int ,int) ;
 int MemoryContextSwitchTo (int ) ;
 int detail ;
 TYPE_1__* errordata ;
 size_t errordata_stack_depth ;
 int recursion_depth ;

int
errdetail_plural(const char *fmt_singular, const char *fmt_plural,
     unsigned long n,...)
{
 ErrorData *edata = &errordata[errordata_stack_depth];
 MemoryContext oldcontext;

 recursion_depth++;
 CHECK_STACK_DEPTH();
 oldcontext = MemoryContextSwitchTo(edata->assoc_context);

 EVALUATE_MESSAGE_PLURAL(edata->domain, detail, 0);

 MemoryContextSwitchTo(oldcontext);
 recursion_depth--;
 return 0;
}
