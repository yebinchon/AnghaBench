
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sqlerrcode; } ;
typedef TYPE_1__ ErrorData ;


 int CHECK_STACK_DEPTH () ;
 TYPE_1__* errordata ;
 size_t errordata_stack_depth ;

int
geterrcode(void)
{
 ErrorData *edata = &errordata[errordata_stack_depth];


 CHECK_STACK_DEPTH();

 return edata->sqlerrcode;
}
