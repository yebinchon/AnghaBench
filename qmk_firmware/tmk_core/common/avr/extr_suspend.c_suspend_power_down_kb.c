
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int suspend_power_down_user () ;

__attribute__((weak)) void suspend_power_down_kb(void) { suspend_power_down_user(); }
