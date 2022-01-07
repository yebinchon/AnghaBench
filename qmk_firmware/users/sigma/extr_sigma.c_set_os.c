
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int os_target; } ;


 int UC_LNX ;
 int UC_OSX ;
 int UC_WIN ;



 TYPE_1__ runtime_userspace_config ;
 int set_unicode_input_mode (int ) ;

void set_os(uint8_t os) {
  runtime_userspace_config.os_target = os;

  switch (os) {
  case 129:
    set_unicode_input_mode(UC_OSX);
    break;
  case 130:
    set_unicode_input_mode(UC_LNX);
    break;
  case 128:
    set_unicode_input_mode(UC_WIN);
    break;
  }
}
