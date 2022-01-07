
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dk60_caps_led_on () ;
 int dk60_esc_led_on () ;

inline void dk60_led_all_on(void)
    {
        dk60_caps_led_on();
        dk60_esc_led_on();
    }
