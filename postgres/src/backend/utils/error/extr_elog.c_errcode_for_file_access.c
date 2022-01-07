
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int saved_errno; int sqlerrcode; } ;
typedef TYPE_1__ ErrorData ;


 int CHECK_STACK_DEPTH () ;
 int ERRCODE_DISK_FULL ;
 int ERRCODE_DUPLICATE_FILE ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_INSUFFICIENT_RESOURCES ;
 int ERRCODE_INTERNAL_ERROR ;
 int ERRCODE_IO_ERROR ;
 int ERRCODE_UNDEFINED_FILE ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 TYPE_1__* errordata ;
 size_t errordata_stack_depth ;

int
errcode_for_file_access(void)
{
 ErrorData *edata = &errordata[errordata_stack_depth];


 CHECK_STACK_DEPTH();

 switch (edata->saved_errno)
 {

  case 129:
  case 139:

  case 128:

   edata->sqlerrcode = ERRCODE_INSUFFICIENT_PRIVILEGE;
   break;


  case 133:
   edata->sqlerrcode = ERRCODE_UNDEFINED_FILE;
   break;


  case 138:
   edata->sqlerrcode = ERRCODE_DUPLICATE_FILE;
   break;


  case 131:
  case 136:

  case 130:

   edata->sqlerrcode = ERRCODE_WRONG_OBJECT_TYPE;
   break;


  case 132:
   edata->sqlerrcode = ERRCODE_DISK_FULL;
   break;

  case 134:
  case 135:
   edata->sqlerrcode = ERRCODE_INSUFFICIENT_RESOURCES;
   break;


  case 137:
   edata->sqlerrcode = ERRCODE_IO_ERROR;
   break;


  default:
   edata->sqlerrcode = ERRCODE_INTERNAL_ERROR;
   break;
 }

 return 0;
}
