
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {int enable; scalar_t__ level; int raw; } ;


 scalar_t__ BACKLIGHT_LEVELS ;
 TYPE_1__ backlight_config ;
 int backlight_set (scalar_t__) ;
 int eeconfig_update_backlight (int ) ;

void backlight_level(uint8_t level) {
    if (level > BACKLIGHT_LEVELS) level = BACKLIGHT_LEVELS;
    backlight_config.level = level;
    backlight_config.enable = !!backlight_config.level;
    eeconfig_update_backlight(backlight_config.raw);
    backlight_set(backlight_config.level);
}
