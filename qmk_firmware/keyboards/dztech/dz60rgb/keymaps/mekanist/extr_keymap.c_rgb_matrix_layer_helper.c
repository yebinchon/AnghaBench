
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int * flags; } ;


 int DRIVER_LED_TOTAL ;
 scalar_t__ HAS_FLAGS (int ,int ) ;
 int LED_FLAG_MODIFIER ;
 TYPE_1__ g_led_config ;
 int rgb_matrix_set_color (int,int ,int ,int ) ;

void rgb_matrix_layer_helper (uint8_t red, uint8_t green, uint8_t blue) {
  for (int i = 0; i < DRIVER_LED_TOTAL; i++) {
    if (HAS_FLAGS(g_led_config.flags[i], LED_FLAG_MODIFIER)) {
        rgb_matrix_set_color( i, red, green, blue );
    }
  }
}
