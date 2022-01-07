
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRC ;
 int DDRF ;
 int PORTB ;
 int PORTC ;
 int PORTF ;

__attribute__((used)) static void unselect_cols(void) {
    DDRB |= 0b01000000;
    PORTB &= ~0b01000000;

    DDRC |= 0b11000000;
    PORTC &= ~0b11000000;

    DDRF |= 0b00000011;
    PORTF &= ~0b00000011;
}
