
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int raw; } ;
struct TYPE_3__ {int raw; } ;


 TYPE_2__ rgblight_config ;
 TYPE_1__ temp_config ;

void keyboard_post_init_user(void) { temp_config.raw = rgblight_config.raw; }
