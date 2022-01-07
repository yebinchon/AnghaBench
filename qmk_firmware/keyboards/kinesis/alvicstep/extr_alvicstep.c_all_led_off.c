
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORTD ;

void all_led_off(void)
{
        PORTD = 0b11111111;
}
