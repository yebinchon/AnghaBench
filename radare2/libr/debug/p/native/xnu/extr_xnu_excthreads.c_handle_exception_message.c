
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int kern_return_t ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_7__ {int exception; TYPE_2__ thread; TYPE_1__ task; } ;
typedef TYPE_3__ exc_msg ;
typedef int RDebug ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int R_DEBUG_REASON_BREAKPOINT ;
 int R_DEBUG_REASON_ILLEGAL ;
 int R_DEBUG_REASON_SEGFAULT ;
 int R_DEBUG_REASON_UNKNOWN ;
 int eprintf (char*) ;
 int mach_port_deallocate (int ,int ) ;
 int mach_task_self () ;
 int task_suspend (int ) ;

__attribute__((used)) static int handle_exception_message (RDebug *dbg, exc_msg *msg, int *ret_code) {
 int ret = R_DEBUG_REASON_UNKNOWN;
 kern_return_t kr;
 *ret_code = KERN_SUCCESS;
 switch (msg->exception) {
 case 132:
  ret = R_DEBUG_REASON_SEGFAULT;
  *ret_code = KERN_FAILURE;
  kr = task_suspend (msg->task.name);
  if (kr != KERN_SUCCESS) {
   eprintf ("failed to suspend task bad access\n");
  }
  eprintf ("EXC_BAD_ACCESS\n");
  break;
 case 131:
  ret = R_DEBUG_REASON_ILLEGAL;
  *ret_code = KERN_FAILURE;
  kr = task_suspend (msg->task.name);
  if (kr != KERN_SUCCESS) {
   eprintf ("failed to suspend task bad instruction\n");
  }
  eprintf ("EXC_BAD_INSTRUCTION\n");
  break;
 case 133:
  eprintf ("EXC_ARITHMETIC\n");
  break;
 case 129:
  eprintf ("EXC_EMULATION\n");
  break;
 case 128:
  eprintf ("EXC_SOFTWARE\n");
  break;
 case 130:
  kr = task_suspend (msg->task.name);
  if (kr != KERN_SUCCESS) {
   eprintf ("failed to suspend task breakpoint\n");
  }
  ret = R_DEBUG_REASON_BREAKPOINT;
  break;
 default:
  eprintf ("UNKNOWN\n");
  break;
 }
 kr = mach_port_deallocate (mach_task_self (), msg->task.name);
 if (kr != KERN_SUCCESS) {
  eprintf ("failed to deallocate task port\n");
 }
 kr = mach_port_deallocate (mach_task_self (), msg->thread.name);
 if (kr != KERN_SUCCESS) {
  eprintf ("failed to deallocated task port\n");
 }
 return ret;
}
