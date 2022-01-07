
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int saved_errno; int sqlerrcode; } ;
typedef TYPE_1__ ErrorData ;


 int CHECK_STACK_DEPTH () ;


 int ERRCODE_CONNECTION_FAILURE ;
 int ERRCODE_INTERNAL_ERROR ;
 TYPE_1__* errordata ;
 size_t errordata_stack_depth ;

int
errcode_for_socket_access(void)
{
 ErrorData *edata = &errordata[errordata_stack_depth];


 CHECK_STACK_DEPTH();

 switch (edata->saved_errno)
 {

  case 128:

  case 129:

   edata->sqlerrcode = ERRCODE_CONNECTION_FAILURE;
   break;


  default:
   edata->sqlerrcode = ERRCODE_INTERNAL_ERROR;
   break;
 }

 return 0;
}
