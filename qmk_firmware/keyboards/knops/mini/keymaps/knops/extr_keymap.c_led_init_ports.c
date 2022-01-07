
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRC ;
 int DDRD ;
 int DDRE ;
 int PORTB ;

void led_init_ports() {
 PORTB |= (1 << 7);
 DDRB &= ~(1<<7);

 DDRD |= (1<<7);
 DDRC |= (1<<6);
 DDRC |= (1<<7);
 DDRD |= (1<<4);
 DDRE |= (1<<6);
 DDRB |= (1<<4);
 DDRD |= (1<<6);

 DDRD |= (1<<5);
 DDRB |= (1<<6);
 DDRB |= (1<<0);
}
