
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int raw; } ;


 int DDRB ;
 int DDRD ;
 int KUCHOSAURONAD0_UNICODE_MODE ;
 int PORTB ;
 int PORTD ;
 int eeconfig_read_user () ;
 int get_unicode_input_mode () ;
 int matrix_init_keymap () ;
 int set_unicode_input_mode (int ) ;
 TYPE_1__ userspace_config ;

void matrix_init_user(void) {
  userspace_config.raw = eeconfig_read_user();
  matrix_init_keymap();
}
