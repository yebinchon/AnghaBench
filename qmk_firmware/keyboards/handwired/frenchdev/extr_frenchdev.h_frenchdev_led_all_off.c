
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int frenchdev_board_led_off () ;
 int frenchdev_led_1_off () ;
 int frenchdev_led_2_off () ;
 int frenchdev_led_3_off () ;

inline void frenchdev_led_all_off(void)
{
    frenchdev_board_led_off();
    frenchdev_led_1_off();
    frenchdev_led_2_off();
    frenchdev_led_3_off();
}
