
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pinned; int exclude_kernel; int exclude_hv; int exclude_idle; } ;
struct event {TYPE_1__ attr; } ;
typedef int pid_t ;


 int FAIL_IF (int ) ;
 int event_enable (struct event*) ;
 int event_init_named (struct event*,int,char*) ;
 int event_open_with_pid (struct event*,int ) ;

__attribute__((used)) static int setup_child_event(struct event *event, pid_t child_pid)
{
 event_init_named(event, 0x400FA, "PM_RUN_INST_CMPL");

 event->attr.pinned = 1;

 event->attr.exclude_kernel = 1;
 event->attr.exclude_hv = 1;
 event->attr.exclude_idle = 1;

 FAIL_IF(event_open_with_pid(event, child_pid));
 FAIL_IF(event_enable(event));

 return 0;
}
