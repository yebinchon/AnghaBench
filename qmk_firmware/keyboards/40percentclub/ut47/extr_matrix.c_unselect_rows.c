
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRC ;
 int DDRD ;
 int PORTC ;
 int PORTD ;

__attribute__((used)) static void unselect_rows(void)
{

    DDRD &= ~0b00010011;
    PORTD &= ~0b00010011;
    DDRC &= ~0b01000000;
    PORTC &= ~0b01000000;
}
