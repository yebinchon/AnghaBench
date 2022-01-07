
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rgb_matrix_set_suspend_state (int) ;
 int suspend_power_down_user () ;

void suspend_power_down_kb(void)
{
    rgb_matrix_set_suspend_state(1);
    suspend_power_down_user();
}
