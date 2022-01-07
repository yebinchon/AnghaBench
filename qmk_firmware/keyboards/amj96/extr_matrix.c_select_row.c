
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PB1 ;
 int PB2 ;
 int PB3 ;
 int PORTB ;

__attribute__((used)) static void select_row(uint8_t row)
{

    (row & (1<<0)) ? (PORTB |= (1<<PB3)) : (PORTB &= ~(1<<PB3));
    (row & (1<<1)) ? (PORTB |= (1<<PB2)) : (PORTB &= ~(1<<PB2));
    (row & (1<<2)) ? (PORTB |= (1<<PB1)) : (PORTB &= ~(1<<PB1));
}
