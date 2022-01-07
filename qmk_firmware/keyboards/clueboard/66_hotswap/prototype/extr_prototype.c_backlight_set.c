
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int PORTD ;

void backlight_set(uint8_t level) {
    if ( level == 0 ) {

        PORTD |= (1<<0);
        PORTD |= (1<<4);
        PORTD |= (1<<1);
    } else {

        PORTD &= ~(1<<0);
        PORTD &= ~(1<<4);
        PORTD &= ~(1<<1);
    }
}
