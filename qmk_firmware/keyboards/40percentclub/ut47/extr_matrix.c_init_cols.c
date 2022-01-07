
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRD ;
 int DDRE ;
 int DDRF ;
 int PORTB ;
 int PORTD ;
 int PORTE ;
 int PORTF ;

__attribute__((used)) static void init_cols(void)
{

    DDRF &= ~(1<<4 | 1<<5 | 1<<6 | 1<<7);
    PORTF |= (1<<4 | 1<<5 | 1<<6 | 1<<7);
    DDRE &= ~(1<<6);
    PORTE |= (1<<6);
    DDRD &= ~(1<<7);
    PORTD |= (1<<7);
    DDRB &= ~(1<<1 | 1<<2 | 1<<3 | 1<<4 | 1<<5 | 1<<6);
    PORTB |= (1<<1 | 1<<2 | 1<<3 | 1<<4 | 1<<5 | 1<<6);
}
