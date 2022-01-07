
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int level; } ;


 int BACKLIGHT_LEVELS ;
 TYPE_1__ kb_backlight_config ;

__attribute__((used)) static inline uint16_t scale_backlight(uint16_t v) {
  return v / BACKLIGHT_LEVELS * kb_backlight_config.level;
}
