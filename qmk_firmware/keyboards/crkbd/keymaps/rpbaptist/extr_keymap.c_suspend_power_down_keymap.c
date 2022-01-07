
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rgb_matrix_set_suspend_state (int) ;

void suspend_power_down_keymap(void) {
    rgb_matrix_set_suspend_state(1);
}
