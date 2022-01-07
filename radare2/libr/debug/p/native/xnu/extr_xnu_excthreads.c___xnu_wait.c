
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;


struct TYPE_20__ {int msgh_size; scalar_t__ msgh_remote_port; int msgh_local_port; } ;
struct TYPE_17__ {TYPE_7__ Head; } ;
typedef TYPE_1__ mig_reply_error_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_18__ {TYPE_7__ hdr; } ;
typedef TYPE_2__ exc_msg ;
struct TYPE_19__ {int stopaddr; } ;
struct TYPE_16__ {int exception_port; } ;
typedef TYPE_3__ RDebug ;


 int KERN_FAILURE ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ MACH_MSG_SUCCESS ;
 int MACH_MSG_TIMEOUT_NONE ;
 int MACH_PORT_NULL ;
 int MACH_RCV_INTERRUPT ;
 scalar_t__ MACH_RCV_INTERRUPTED ;
 int MACH_RCV_MSG ;
 int MACH_SEND_INTERRUPT ;
 int MACH_SEND_MSG ;
 int R_DEBUG_REASON_DEAD ;
 int R_DEBUG_REASON_MACH_RCV_INTERRUPTED ;
 int R_DEBUG_REASON_UNKNOWN ;
 int encode_reply (TYPE_1__*,TYPE_7__*,int) ;
 int eprintf (char*) ;
 TYPE_12__ ex ;
 int handle_dead_notify (TYPE_3__*,TYPE_2__*) ;
 int handle_exception_message (TYPE_3__*,TYPE_2__*,int*) ;
 scalar_t__ mach_msg (TYPE_7__*,int,int,int,int ,int ,int ) ;
 scalar_t__ mach_port_deallocate (int ,scalar_t__) ;
 int mach_task_self () ;
 int r_debug_reg_get (TYPE_3__*,char*) ;
 int validate_mach_message (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static int __xnu_wait (RDebug *dbg, int pid) {

 kern_return_t kr;
 int ret_code, reason = R_DEBUG_REASON_UNKNOWN;
 mig_reply_error_t reply;
 bool ret;
 exc_msg msg;
 if (!dbg) {
  return reason;
 }
 msg.hdr.msgh_local_port = ex.exception_port;
 msg.hdr.msgh_size = sizeof (exc_msg);
 for (;;) {
  kr = mach_msg (
   &msg.hdr,
   MACH_RCV_MSG | MACH_RCV_INTERRUPT, 0,
   sizeof (exc_msg), ex.exception_port,
   MACH_MSG_TIMEOUT_NONE, MACH_PORT_NULL);
  if (kr == MACH_RCV_INTERRUPTED) {
   reason = R_DEBUG_REASON_MACH_RCV_INTERRUPTED;
   break;
  } else if (kr != MACH_MSG_SUCCESS) {
   eprintf ("message didn't succeeded\n");
   break;
  }
  ret = validate_mach_message (dbg, &msg);
  if (!ret) {
   ret = handle_dead_notify (dbg, &msg);
   if (ret) {
    reason = R_DEBUG_REASON_DEAD;
    break;
   }
  }
  if (!ret) {
   encode_reply (&reply, &msg.hdr, KERN_FAILURE);
   kr = mach_msg (&reply.Head, MACH_SEND_MSG | MACH_SEND_INTERRUPT,
     reply.Head.msgh_size, 0,
     MACH_PORT_NULL, MACH_MSG_TIMEOUT_NONE,
     MACH_PORT_NULL);
   if (reply.Head.msgh_remote_port != 0 && kr != MACH_MSG_SUCCESS) {
    kr = mach_port_deallocate(mach_task_self (), reply.Head.msgh_remote_port);
    if (kr != KERN_SUCCESS) {
     eprintf ("failed to deallocate reply port\n");
    }
   }
   continue;
  }

  reason = handle_exception_message (dbg, &msg, &ret_code);
  encode_reply (&reply, &msg.hdr, ret_code);
  kr = mach_msg (&reply.Head, MACH_SEND_MSG | MACH_SEND_INTERRUPT,
    reply.Head.msgh_size, 0,
    MACH_PORT_NULL, 0,
    MACH_PORT_NULL);
  if (reply.Head.msgh_remote_port != 0 && kr != MACH_MSG_SUCCESS) {
   kr = mach_port_deallocate(mach_task_self (), reply.Head.msgh_remote_port);
   if (kr != KERN_SUCCESS)
    eprintf ("failed to deallocate reply port\n");
  }
  break;
 }
 dbg->stopaddr = r_debug_reg_get (dbg, "PC");
 return reason;
}
