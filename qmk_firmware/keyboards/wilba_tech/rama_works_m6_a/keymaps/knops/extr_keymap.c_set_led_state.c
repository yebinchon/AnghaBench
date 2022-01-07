
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORTB ;
 int PORTC ;
 int PORTD ;
 int PORTF ;

void set_led_state(int ledId, bool state)
{
    if (state)
    {
        switch (ledId)
        {
        case 0:
            PORTD |= (1 << 6);
            break;
        case 1:
            PORTB |= (1 << 6);
            break;
        case 2:
            PORTF |= (1 << 5);
            break;
        case 3:
            PORTB |= (1 << 4);
            break;
        case 4:
            PORTC |= (1 << 7);
            break;
        case 5:
            PORTF |= (1 << 7);
            break;
        }
    }
    else
    {
        switch (ledId)
        {
        case 0:
            PORTD &= ~(1 << 6);
            break;
        case 1:
            PORTB &= ~(1 << 6);
            break;
        case 2:
            PORTF &= ~(1 << 5);
            break;
        case 3:
            PORTB &= ~(1 << 4);
            break;
        case 4:
            PORTC &= ~(1 << 7);
            break;
        case 5:
            PORTF &= ~(1 << 7);
            break;
        }
    }
}
