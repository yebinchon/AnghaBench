
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUPTERM_TASK_ID ;
 int MP_ARRAY_SIZE (int ) ;
 int dupterm_evt_queue ;
 int dupterm_task_handler ;
 int system_os_task (int ,int ,int ,int ) ;

void dupterm_task_init() {
    system_os_task(dupterm_task_handler, DUPTERM_TASK_ID, dupterm_evt_queue, MP_ARRAY_SIZE(dupterm_evt_queue));
}
