
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int frenchdev_board_led_on () ;
 int frenchdev_led_1_on () ;
 int frenchdev_led_2_on () ;
 int frenchdev_led_3_on () ;

inline void frenchdev_led_all_on(void)
{
    frenchdev_board_led_on();
    frenchdev_led_1_on();
    frenchdev_led_2_on();
    frenchdev_led_3_on();
}
