
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int level; } ;


 TYPE_1__ kb_backlight_config ;

uint8_t get_backlight_level(void){
  return kb_backlight_config.level;
}
