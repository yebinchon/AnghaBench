
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRD ;
 int PORTB ;

void led_init_ports(void) {
 DDRD |= (1<<2) | (1<<3) | (1<<4);
 DDRB |= (1<<7);
 PORTB |= (1<<7);
}
