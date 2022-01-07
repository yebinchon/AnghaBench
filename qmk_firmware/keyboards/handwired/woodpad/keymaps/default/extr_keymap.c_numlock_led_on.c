
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORTF ;

void numlock_led_on(void) {
  PORTF |= (1<<7);
}
