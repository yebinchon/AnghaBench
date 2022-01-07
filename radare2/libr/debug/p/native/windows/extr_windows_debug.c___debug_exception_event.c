
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned long ExceptionCode; } ;
struct TYPE_7__ {TYPE_1__ ExceptionRecord; } ;
struct TYPE_8__ {TYPE_2__ Exception; } ;
struct TYPE_9__ {scalar_t__ dwThreadId; scalar_t__ dwProcessId; TYPE_3__ u; } ;
typedef TYPE_4__ DEBUG_EVENT ;







 int __get_w32_excep_name (unsigned long) ;
 int eprintf (char*,int,int,int) ;

__attribute__((used)) static int __debug_exception_event(DEBUG_EVENT *de) {
 unsigned long code = de->u.Exception.ExceptionRecord.ExceptionCode;
 switch (code) {

 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  eprintf ("(%d) Fatal exception (%s) in thread %d\n",
   (int)de->dwProcessId,
   __get_w32_excep_name (code),
   (int)de->dwThreadId);
  break;

 case 0x406D1388:
  eprintf ("(%d) MS_VC_EXCEPTION (%x) in thread %d\n",
   (int)de->dwProcessId, (int)code, (int)de->dwThreadId);
  return 1;
 default:
  eprintf ("(%d) Unknown exception %x in thread %d\n",
   (int)de->dwProcessId, (int)code, (int)de->dwThreadId);
  break;
 }
 return 0;
}
