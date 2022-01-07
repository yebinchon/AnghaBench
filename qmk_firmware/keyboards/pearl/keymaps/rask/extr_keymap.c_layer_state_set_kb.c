
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int PD0 ;
 int PD1 ;
 int PD6 ;
 int PORTD ;

uint32_t layer_state_set_kb(uint32_t state)
{

    if (state & (1<<1)){

        PORTD |= (1 << PD0);
    } else{
        PORTD &= ~(1 << PD0);
    }


    if (state & (1<<2)){

        PORTD |= (1 << PD1);
    } else{
        PORTD &= ~(1 << PD1);
    }


    if (state & (1<<3)){

        PORTD |= (1 << PD6);
    } else{
        PORTD &= ~(1 << PD6);
    }
    return state;
}
