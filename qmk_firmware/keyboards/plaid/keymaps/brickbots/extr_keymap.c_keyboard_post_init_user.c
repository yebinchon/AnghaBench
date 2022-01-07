
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ red_mode; scalar_t__ green_mode; int raw; } ;


 scalar_t__ LEDMODE_ON ;
 int LED_GREEN ;
 int LED_RED ;
 int eeconfig_read_user () ;
 TYPE_1__ led_config ;
 int writePinHigh (int ) ;

void keyboard_post_init_user(void) {

  led_config.raw = eeconfig_read_user();

  if(led_config.red_mode == LEDMODE_ON) {
      writePinHigh(LED_RED);
  }

  if(led_config.green_mode == LEDMODE_ON) {
      writePinHigh(LED_GREEN);
  }
}
