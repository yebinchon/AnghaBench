
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UC_LNX ;
 int set_unicode_input_mode (int ) ;

void matrix_init_user() {
  set_unicode_input_mode(UC_LNX);
}
