
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rgb_matrix_set_suspend_state (int) ;
 int suspend_wakeup_init_user () ;

void suspend_wakeup_init_kb(void)
{
    rgb_matrix_set_suspend_state(0);
    suspend_wakeup_init_user();
}
