
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PORTB ;
 int PORTC ;
 int PORTD ;
 int PORTF ;

__attribute__((used)) static void select_col(uint8_t col)
{
    switch (col) {
        case 0:
            PORTC |= 0b01000000;
            break;
        case 1:
            PORTC |= 0b01000000;
            PORTF |= 0b00000001;
            break;
        case 2:
            PORTC |= 0b01000000;
            PORTF |= 0b00000010;
            break;
        case 3:
            PORTC |= 0b01000000;
            PORTF |= 0b00000011;
            break;
        case 4:
            PORTC |= 0b11000000;
            break;
        case 5:
            PORTC |= 0b11000000;
            PORTF |= 0b00000001;
            break;
        case 6:
            PORTC |= 0b11000000;
            PORTF |= 0b00000010;
            break;
        case 7:
            PORTC |= 0b11000000;
            PORTF |= 0b00000011;
            break;
        case 8:
            PORTB |= 0b01000000;
            break;
        case 9:
            PORTB |= 0b01000000;
            PORTF |= 0b00000001;
            break;
        case 10:
            PORTB |= 0b01000000;
            PORTF |= 0b00000010;
            break;
        case 11:
            PORTB |= 0b01000000;
            PORTF |= 0b00000011;
            break;
        case 12:
            PORTB |= 0b01000000;
            PORTC |= 0b10000000;
            break;
        case 13:
            PORTB |= 0b01000000;
            PORTF |= 0b00000001;
            PORTC |= 0b10000000;
            break;
        case 14:
            PORTB |= 0b01000000;
            PORTF |= 0b00000010;
            PORTC |= 0b10000000;
            break;
        case 15:
            PORTB |= 0b01000000;
            PORTF |= 0b00000011;
            PORTC |= 0b10000000;
            break;
        case 16:
            PORTB |= 0b00100000;
            break;
        case 17:
            PORTB |= 0b00010000;
            break;
        case 18:
            PORTD |= 0b10000000;
            break;
        case 19:
            PORTB |= 0b00000001;
            break;
    }
}
