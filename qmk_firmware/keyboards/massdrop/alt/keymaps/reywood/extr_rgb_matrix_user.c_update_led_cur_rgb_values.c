
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** b; void** g; void** r; } ;
struct TYPE_4__ {scalar_t__ scan; TYPE_1__ rgb; } ;


 int MAX_B ;
 int MAX_G ;
 int MAX_R ;
 int MIN_B ;
 int MIN_G ;
 int MIN_R ;
 void* UNDERGLOW_B ;
 void* UNDERGLOW_G ;
 void* UNDERGLOW_R ;
 scalar_t__ UNDERGLOW_SCAN_CODE ;
 void* calculate_new_color_component_value (int ,int ) ;
 TYPE_2__* led_cur ;

__attribute__((used)) static void update_led_cur_rgb_values(void) {
  if (led_cur->scan == UNDERGLOW_SCAN_CODE) {
    *led_cur->rgb.r = UNDERGLOW_R;
    *led_cur->rgb.g = UNDERGLOW_G;
    *led_cur->rgb.b = UNDERGLOW_B;
  } else {
    *led_cur->rgb.r = calculate_new_color_component_value(MAX_R, MIN_R);
    *led_cur->rgb.g = calculate_new_color_component_value(MAX_G, MIN_G);
    *led_cur->rgb.b = calculate_new_color_component_value(MAX_B, MIN_B);
  }
}
