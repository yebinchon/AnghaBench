
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRC ;
 int DDRD ;
 int DDRE ;
 int DDRF ;
 int PORTB ;
 int PORTC ;
 int PORTD ;
 int PORTE ;
 int PORTF ;

__attribute__((used)) static void unselect_cols(void) {
    DDRB |= (1<<5) | (1<<6) | (1<<0) | (1<<7) | (1<<4);
    PORTB &= ~((1<<5) | (1<<6) | (1<<0) | (1<<7) | (1<<4));

    DDRD |= (1<<4) | (1<<6) | (1<<7);
    PORTD &= ~((1<<4) | (1<<6) | (1<<7));

    DDRE |= (1<<6);
    PORTE &= ~((1<<6));

    DDRF |= (1<<0) | (1<<1);
    PORTF &= ~((1<<0) | (1<<1));

    DDRC |= (1<<7) | (1<<6);
    PORTC &= ~((1<<7) | (1<<6));
}
