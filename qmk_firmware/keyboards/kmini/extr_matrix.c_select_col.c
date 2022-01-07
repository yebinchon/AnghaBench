
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PORTB ;
 int PORTC ;
 int PORTD ;
 int PORTE ;
 int PORTF ;

__attribute__((used)) static void select_col(uint8_t col)
{
    switch (col) {
        case 0:
            PORTB |= (1<<5);
            break;
        case 1:
            PORTB |= (1<<6);
            break;
        case 2:
            PORTC |= (1<<6);
            break;
        case 3:
            PORTC |= (1<<6);
            PORTF |= (1<<0);
            break;
        case 4:
            PORTC |= (1<<6);
            PORTF |= (1<<1);
            break;
        case 5:
            PORTC |= (1<<6);
            PORTF |= (1<<0);
            PORTF |= (1<<1);
            break;
        case 6:
            PORTC |= (1<<6);
            PORTC |= (1<<7);
            break;
        case 7:
            PORTC |= (1<<6);
            PORTF |= (1<<0);
            PORTC |= (1<<7);
            break;
        case 8:
            PORTC |= (1<<6);
            PORTF |= (1<<1);
            PORTC |= (1<<7);
            break;
        case 9:
            PORTC |= (1<<6);
            PORTF |= (1<<0);
            PORTF |= (1<<1);
            PORTC |= (1<<7);
            break;
        case 10:
            PORTE |= (1<<6);
            break;
        case 11:
            PORTB |= (1<<0);
            break;
        case 12:
            PORTB |= (1<<7);
            break;
        case 13:
            PORTD |= (1<<4);
            break;
        case 14:
            PORTD |= (1<<6);
            break;
        case 15:
            PORTD |= (1<<7);
            break;
        case 16:
            PORTB |= (1<<4);
            break;
    }
}
