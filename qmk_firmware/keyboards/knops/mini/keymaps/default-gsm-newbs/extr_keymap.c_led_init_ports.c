
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRC ;
 int DDRD ;
 int DDRE ;
 int PORTB ;
 int PORTC ;
 int PORTD ;
 int PORTE ;

void led_init_ports() {

 DDRD |= (1<<7);
 PORTD &= ~(1<<7);


 DDRC |= (1<<6);
 DDRC |= (1<<7);
 PORTC &= ~(1<<6);
 PORTC &= ~(1<<7);


 DDRD |= (1<<4);
 PORTD &= ~(1<<4);


 DDRE |= (1<<6);
 PORTE &= ~(1<<6);


 DDRB |= (1<<4);
 PORTB &= ~(1<<4);


 DDRD |= (1<<6);
 PORTD &= ~(1<<6);
 DDRD |= (1<<5);
 DDRB |= (1<<6);
 DDRB |= (1<<0);

}
