
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRD ;
 int DDRE ;
 int DDRF ;
 int LED_CAPS_LOCK ;
 int LED_FN ;
 int LED_MOUSE_LOCK ;
 int LED_NAS ;
 int LED_NUM_LOCK ;
 int LED_SCROLL_LOCK ;
 int LED_TENKEY ;
 int PORTB ;
 int PORTF ;
 int matrix_init_user () ;

void matrix_init(void) {



  DDRB = 0b11111000;


  DDRD = 0b00000011;


  DDRE = 0b01000000;


  DDRF = 0b11110000;


  PORTB |= LED_TENKEY | LED_FN | LED_NAS;


  PORTF |= LED_CAPS_LOCK | LED_NUM_LOCK | LED_SCROLL_LOCK | LED_MOUSE_LOCK;

  matrix_init_user();
}
