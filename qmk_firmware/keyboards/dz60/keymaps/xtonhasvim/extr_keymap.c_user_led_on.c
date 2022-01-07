
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int LED_BIT ;
 int LED_MASK ;
 int PORTB ;

void user_led_on(void) {
  DDRB |= LED_BIT;
  PORTB &= LED_MASK;
}
