
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORTD ;

void scroll_lock_led_on(void)
{
        PORTD = 0b11011111;
}
