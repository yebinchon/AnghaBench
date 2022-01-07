
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int mach_msg_type_number_t ;
typedef int mach_msg_port_descriptor_t ;
typedef int mach_msg_header_t ;
typedef int mach_msg_body_t ;
typedef int mach_exception_data_t ;
typedef scalar_t__ kern_return_t ;
typedef int exception_type_t ;
struct TYPE_15__ {scalar_t__ name; } ;
struct TYPE_14__ {scalar_t__ name; } ;
struct TYPE_13__ {scalar_t__ mig_vers; scalar_t__ if_vers; scalar_t__ mig_encoding; scalar_t__ int_rep; scalar_t__ char_rep; scalar_t__ float_rep; } ;
struct TYPE_12__ {scalar_t__ msgh_local_port; int msgh_bits; int msgh_id; int msgh_size; } ;
struct TYPE_16__ {TYPE_4__ thread; TYPE_3__ task; TYPE_2__ NDR; TYPE_1__ hdr; } ;
typedef TYPE_5__ exc_msg ;
struct TYPE_18__ {scalar_t__ exception_port; } ;
struct TYPE_17__ {int pid; } ;
struct TYPE_11__ {scalar_t__ mig_encoding; scalar_t__ int_rep; scalar_t__ char_rep; scalar_t__ float_rep; } ;
typedef TYPE_6__ RDebug ;
typedef int NDR_record_t ;


 scalar_t__ KERN_SUCCESS ;
 int MACH_MSGH_BITS_COMPLEX ;
 scalar_t__ NDR_PROTOCOL_2_0 ;
 TYPE_10__ NDR_record ;
 int eprintf (char*) ;
 TYPE_9__ ex ;
 scalar_t__ mach_port_deallocate (int ,scalar_t__) ;
 int mach_task_self () ;
 scalar_t__ pid_to_task (int ) ;

__attribute__((used)) static bool validate_mach_message (RDebug *dbg, exc_msg *msg) {
 kern_return_t kr;




 if (msg->hdr.msgh_local_port != ex.exception_port) {
  return 0;
 }

 if (!(msg->hdr.msgh_bits & MACH_MSGH_BITS_COMPLEX)) {
  return 0;
 }


 if (msg->hdr.msgh_id > 2405 || msg->hdr.msgh_id < 2401) {
  return 0;
 }

 if (msg->hdr.msgh_size <
     sizeof (mach_msg_header_t) + sizeof (mach_msg_body_t) +
      2 * sizeof (mach_msg_port_descriptor_t) +
      sizeof (NDR_record_t) + sizeof (exception_type_t) +
      sizeof (mach_msg_type_number_t) +
      sizeof (mach_exception_data_t))
  return 0;

 if (msg->NDR.mig_vers != NDR_PROTOCOL_2_0 ||
     msg->NDR.if_vers != NDR_PROTOCOL_2_0 ||
     msg->NDR.mig_encoding != NDR_record.mig_encoding ||
     msg->NDR.int_rep != NDR_record.int_rep ||
     msg->NDR.char_rep != NDR_record.char_rep ||
     msg->NDR.float_rep != NDR_record.float_rep) {
  return 0;
 }
 if (pid_to_task (dbg->pid) != msg->task.name) {




  kr = mach_port_deallocate (mach_task_self (), msg->task.name);
  if (kr != KERN_SUCCESS) {
   eprintf ("validate_mach_message: failed to deallocate task port\n");
  }
  kr = mach_port_deallocate (mach_task_self (), msg->thread.name);
  if (kr != KERN_SUCCESS) {
   eprintf ("validate_mach_message2: failed to deallocated task port\n");
  }
  return 0;
 }
 return 1;

}
