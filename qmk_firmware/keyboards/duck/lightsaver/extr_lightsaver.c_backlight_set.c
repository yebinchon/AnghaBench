
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int BACKLIGHT_ALPHAS ;
 int BACKLIGHT_FKEYS ;
 int BACKLIGHT_MODNUM ;
 int BACKLIGHT_NUMPAD ;
 int PORTB ;
 int PORTE ;

void backlight_set(uint8_t level) {
  if (level > 0) {

    PORTB &= ~BACKLIGHT_ALPHAS;
    PORTB &= ~BACKLIGHT_FKEYS;
    PORTB &= ~BACKLIGHT_MODNUM;
    PORTE &= ~BACKLIGHT_NUMPAD;
  } else {

    PORTB |= BACKLIGHT_ALPHAS;
    PORTB |= BACKLIGHT_FKEYS;
    PORTB |= BACKLIGHT_MODNUM;
    PORTE |= BACKLIGHT_NUMPAD;
  }
}
