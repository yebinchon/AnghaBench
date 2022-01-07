
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int level; int enable; } ;
struct TYPE_3__ {int enable; } ;


 TYPE_2__ backlight_config ;
 int backlight_set (int) ;
 TYPE_1__ rgblight_config ;
 int rgblight_set () ;

void suspend_power_down_user(void)
{

  rgblight_config.enable = 0;
  rgblight_set();



  backlight_config.level = 3;
  backlight_config.enable = 0;
  backlight_set(3);
}
