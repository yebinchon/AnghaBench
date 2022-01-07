
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ OUTPUT_BLUETOOTH ;
 scalar_t__ OUTPUT_USB ;
 int UC_LNX ;
 scalar_t__ auto_detect_output () ;
 int led_init () ;
 int set_output (scalar_t__) ;
 int set_unicode_input_mode (int ) ;
 int wait_ms (int) ;

void matrix_init_user() {
  wait_ms(500);

  set_unicode_input_mode(UC_LNX);
}
