
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8 ;
typedef int os_event_t ;


 size_t TASK_PRIORITY_HIGH ;
 scalar_t__ os_malloc (int) ;
 int os_memset (int *,int ,int) ;
 int system_os_task (int ,size_t,int *,size_t) ;
 int ** task_Q ;
 int task_dispatch ;

bool task_init_handler(uint8 priority, uint8 qlen) {
  if (priority <= TASK_PRIORITY_HIGH && task_Q[priority] == ((void*)0)) {
    task_Q[priority] = (os_event_t *) os_malloc( sizeof(os_event_t)*qlen );
    os_memset (task_Q[priority], 0, sizeof(os_event_t)*qlen);
    if (task_Q[priority]) {
      return system_os_task( task_dispatch, priority, task_Q[priority], qlen );
    }
  }
  return 0;
}
