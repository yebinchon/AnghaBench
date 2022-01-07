
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRD ;
 int DDRF ;
 int PORTD ;
 int PORTF ;

void led_init(void) {
 DDRD |= (1<<1);
 PORTD |= (1<<1);
 DDRF |= (1<<4) | (1<<5);
 PORTF |= (1<<4) | (1<<5);
}
