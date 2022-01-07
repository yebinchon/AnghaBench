
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int level; int raw; } ;
struct TYPE_3__ {int raw; } ;


 TYPE_2__ backlight_config ;
 int backlight_set (int ) ;
 int eeconfig_read_backlight () ;
 int eeconfig_read_rgblight () ;
 TYPE_1__ rgblight_config ;
 int rgblight_set () ;

void suspend_wakeup_init_user(void)
{
  rgblight_config.raw = eeconfig_read_rgblight();
  backlight_config.raw = eeconfig_read_backlight();

  backlight_set(backlight_config.level);
  rgblight_set();
}
