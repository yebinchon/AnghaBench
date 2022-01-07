
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int frenchdev_led_1_set (int ) ;
 int frenchdev_led_2_set (int ) ;
 int frenchdev_led_3_set (int ) ;

inline void frenchdev_led_all_set(uint8_t n)
{
    frenchdev_led_1_set(n);
    frenchdev_led_2_set(n);
    frenchdev_led_3_set(n);
}
