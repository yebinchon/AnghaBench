
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int raw; } ;


 int eeconfig_read_user () ;
 TYPE_1__ led_config ;

void keyboard_post_init_user(void) { led_config.raw = eeconfig_read_user(); }
