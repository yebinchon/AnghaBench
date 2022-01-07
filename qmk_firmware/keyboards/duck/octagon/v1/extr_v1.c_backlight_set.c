
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int BACKLIGHT_ALPHA ;
 int BACKLIGHT_EXTRA ;
 int BACKLIGHT_FROW ;
 int BACKLIGHT_MODNUM ;
 int BACKLIGHT_RGBBLUE ;
 int BACKLIGHT_RGBGREEN ;
 int BACKLIGHT_RGBRED ;
 int PORTB ;
 int PORTD ;
 int PORTE ;

void backlight_set(uint8_t level) {
  level & BACKLIGHT_ALPHA ? (PORTB |= 0b00000010) : (PORTB &= ~0b00000010);
  level & BACKLIGHT_EXTRA ? (PORTB |= 0b00000100) : (PORTB &= ~0b00000100);
  level & BACKLIGHT_MODNUM ? (PORTB |= 0b00001000) : (PORTB &= ~0b00001000);
  level & BACKLIGHT_FROW ? (PORTE |= 0b01000000) : (PORTE &= ~0b01000000);
  level & BACKLIGHT_RGBRED ? (PORTD |= 0b01000000) : (PORTD &= ~0b01000000);
  level & BACKLIGHT_RGBGREEN ? (PORTD |= 0b10000000) : (PORTD &= ~0b10000000);
  level & BACKLIGHT_RGBBLUE ? (PORTD |= 0b00010000) : (PORTD &= ~0b00010000);
}
