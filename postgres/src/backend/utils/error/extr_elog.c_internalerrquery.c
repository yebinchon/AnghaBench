
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int assoc_context; int * internalquery; } ;
typedef TYPE_1__ ErrorData ;


 int CHECK_STACK_DEPTH () ;
 int * MemoryContextStrdup (int ,char const*) ;
 TYPE_1__* errordata ;
 size_t errordata_stack_depth ;
 int pfree (int *) ;

int
internalerrquery(const char *query)
{
 ErrorData *edata = &errordata[errordata_stack_depth];


 CHECK_STACK_DEPTH();

 if (edata->internalquery)
 {
  pfree(edata->internalquery);
  edata->internalquery = ((void*)0);
 }

 if (query)
  edata->internalquery = MemoryContextStrdup(edata->assoc_context, query);

 return 0;
}
