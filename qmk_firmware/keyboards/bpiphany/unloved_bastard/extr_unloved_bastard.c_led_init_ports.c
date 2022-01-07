
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRC ;
 int PORTB ;
 int PORTC ;

void led_init_ports(void) {
    DDRB |= (1<<7);
    DDRC |= (1<<5);
    DDRC |= (1<<6);

    PORTB |= (1<<7);
    PORTC |= (1<<5);
    PORTC |= (1<<6);
}
