
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;


 int RGB_current_mode ;
 TYPE_1__ rgblight_config ;
 int startup_user () ;

void matrix_init_user(void) {



    RGB_current_mode = rgblight_config.mode;
}
