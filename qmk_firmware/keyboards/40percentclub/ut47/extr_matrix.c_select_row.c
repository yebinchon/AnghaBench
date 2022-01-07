
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DDRC ;
 int DDRD ;
 int PORTC ;
 int PORTD ;

__attribute__((used)) static void select_row(uint8_t row)
{

    switch (row) {
        case 0:
            DDRD |= (1<<1);
            PORTD &= ~(1<<1);
            break;
        case 1:
            DDRD |= (1<<0);
            PORTD &= ~(1<<0);
            break;
        case 2:
            DDRD |= (1<<4);
            PORTD &= ~(1<<4);
            break;
        case 3:
            DDRC |= (1<<6);
            PORTC &= ~(1<<6);
            break;
    }
}
