
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int PORTB ;
 int PORTD ;

void backlight_set(uint8_t level) {
    if ( level == 0 ) {

        PORTD |= (1<<6);
        PORTB |= (1<<7);
        PORTD |= (1<<4);
    } else {

        PORTD &= ~(1<<6);
        PORTB &= ~(1<<7);
        PORTD &= ~(1<<4);
    }
}
