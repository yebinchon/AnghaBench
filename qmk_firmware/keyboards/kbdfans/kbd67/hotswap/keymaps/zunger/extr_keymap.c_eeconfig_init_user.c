
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UC_OSX ;
 int set_unicode_input_mode (int ) ;

void eeconfig_init_user(void) {
  set_unicode_input_mode(UC_OSX);
}
