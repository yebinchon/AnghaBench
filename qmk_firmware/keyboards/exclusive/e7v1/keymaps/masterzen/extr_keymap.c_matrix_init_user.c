
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;


 int mode ;
 TYPE_1__ rgblight_config ;

void matrix_init_user(void)
{
  mode = rgblight_config.mode;
}
