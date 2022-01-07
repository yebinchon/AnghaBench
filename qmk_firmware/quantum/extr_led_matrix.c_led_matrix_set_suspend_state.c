
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_suspend_state ;

void led_matrix_set_suspend_state(bool state) { g_suspend_state = state; }
