
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRC ;
 int DDRD ;
 int DDRF ;
 int PORTB ;
 int PORTC ;
 int PORTD ;
 int PORTF ;

void led_init_ports()
{

    DDRD |= (1 << 6);
    PORTD &= ~(1 << 6);


    DDRB |= (1 << 6);
    PORTB &= ~(1 << 6);


    DDRF |= (1 << 5);
    PORTF &= ~(1 << 5);


    DDRB |= (1 << 4);
    PORTB &= ~(1 << 4);


    DDRC |= (1 << 7);
    PORTC &= ~(1 << 7);


    DDRF |= (1 << 7);
    PORTF &= ~(1 << 7);
}
