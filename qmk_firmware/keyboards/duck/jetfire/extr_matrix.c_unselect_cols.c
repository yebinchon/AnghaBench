
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORTB ;
 int PORTC ;
 int PORTD ;
 int PORTF ;

__attribute__((used)) static void unselect_cols(void)
{
    PORTF &= 0b11111100;
    PORTC &= 0b00111111;
    PORTB &= 0b10001110;
    PORTD &= 0b01111111;
}
