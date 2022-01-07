
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int task_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_2__ {int count; int exception_port; int * flavors; int * behaviors; int * ports; int * masks; } ;


 scalar_t__ KERN_SUCCESS ;
 int eprintf (char*) ;
 TYPE_1__ ex ;
 scalar_t__ mach_port_deallocate (int ,int ) ;
 int mach_task_self () ;
 int pid_to_task (int) ;
 scalar_t__ task_set_exception_ports (int ,int ,int ,int ,int ) ;

__attribute__((used)) static bool xnu_restore_exception_ports (int pid) {
 kern_return_t kr;
 int i;
 task_t task = pid_to_task (pid);
 if (!task)
  return 0;
 for (i = 0; i < ex.count; i++) {
  kr = task_set_exception_ports (task, ex.masks[i], ex.ports[i],
            ex.behaviors[i], ex.flavors[i]);
  if (kr != KERN_SUCCESS) {
   eprintf ("fail to restore exception ports\n");
   return 0;
  }
 }
 kr = mach_port_deallocate (mach_task_self (), ex.exception_port);
 if (kr != KERN_SUCCESS) {
  eprintf ("failed to deallocate exception port\n");
  return 0;
 }
 return 1;
}
