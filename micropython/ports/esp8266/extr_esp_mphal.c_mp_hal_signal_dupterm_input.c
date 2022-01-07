
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUPTERM_TASK_ID ;
 int system_os_post (int ,int ,int ) ;

void mp_hal_signal_dupterm_input(void) {
    system_os_post(DUPTERM_TASK_ID, 0, 0);
}
