
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I2C3733_Control_Set (int) ;
 scalar_t__ led_enabled ;
 int suspend_wakeup_init_kb () ;

void suspend_wakeup_init(void) {
    suspend_wakeup_init_kb();
}
