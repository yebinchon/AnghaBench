
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int arg; int (* callback ) (int ) ;struct TYPE_7__* previous; } ;
struct TYPE_6__ {char* context; int assoc_context; } ;
typedef TYPE_1__ ErrorData ;
typedef TYPE_2__ ErrorContextCallback ;


 int CurrentMemoryContext ;
 scalar_t__ ERRORDATA_STACK_SIZE ;
 int MemSet (TYPE_1__*,int ,int) ;
 int PANIC ;
 int ereport (int ,int ) ;
 int errmsg_internal (char*) ;
 TYPE_2__* error_context_stack ;
 TYPE_1__* errordata ;
 scalar_t__ errordata_stack_depth ;
 int recursion_depth ;
 int stub1 (int ) ;

char *
GetErrorContextStack(void)
{
 ErrorData *edata;
 ErrorContextCallback *econtext;




 recursion_depth++;

 if (++errordata_stack_depth >= ERRORDATA_STACK_SIZE)
 {





  errordata_stack_depth = -1;
  ereport(PANIC, (errmsg_internal("ERRORDATA_STACK_SIZE exceeded")));
 }




 edata = &errordata[errordata_stack_depth];
 MemSet(edata, 0, sizeof(ErrorData));





 edata->assoc_context = CurrentMemoryContext;
 for (econtext = error_context_stack;
   econtext != ((void*)0);
   econtext = econtext->previous)
  econtext->callback(econtext->arg);







 errordata_stack_depth--;
 recursion_depth--;





 return edata->context;
}
