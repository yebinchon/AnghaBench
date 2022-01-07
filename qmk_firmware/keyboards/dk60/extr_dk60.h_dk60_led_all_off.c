
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dk60_caps_led_off () ;
 int dk60_esc_led_off () ;

inline void dk60_led_all_off(void)
    {
        dk60_caps_led_off();
        dk60_esc_led_off();
    }
