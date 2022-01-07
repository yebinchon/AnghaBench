
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int BACKLIGHT_LEVELS ;
 int get_backlight_level () ;

__attribute__((used)) static inline uint16_t scale_backlight(uint16_t v) {
  return v / BACKLIGHT_LEVELS * get_backlight_level();
}
