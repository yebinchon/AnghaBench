
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UC_WINC ;
 int _delay_ms (int) ;
 int set_unicode_input_mode (int ) ;

void matrix_init_user(void) {
  _delay_ms(500);
  set_unicode_input_mode(UC_WINC);
}
