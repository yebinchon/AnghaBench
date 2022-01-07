
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int PB0 ;
 int PB1 ;
 int PB2 ;
 int PB3 ;
 int PORTB ;
 int biton32 (int ) ;

uint32_t layer_state_set_user(uint32_t state)
{

    if (biton32(state) == 0) {
        PORTB &= ~(1<<PB0);
    } else {
        PORTB |= (1<<PB0);
    }


    if (biton32(state) == 1) {
        PORTB &= ~(1<<PB1);
    } else {
        PORTB |= (1<<PB1);
    }

    if (biton32(state) == 2) {
        PORTB &= ~(1<<PB2);
    } else {
        PORTB |= (1<<PB2);
    }


    if (biton32(state) == 3) {
        PORTB &= ~(1<<PB3);
    } else {
        PORTB |= (1<<PB3);
    }

    return state;
}
