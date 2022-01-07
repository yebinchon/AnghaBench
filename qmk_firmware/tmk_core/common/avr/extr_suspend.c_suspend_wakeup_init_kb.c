
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int suspend_wakeup_init_user () ;

__attribute__((weak)) void suspend_wakeup_init_kb(void) { suspend_wakeup_init_user(); }
