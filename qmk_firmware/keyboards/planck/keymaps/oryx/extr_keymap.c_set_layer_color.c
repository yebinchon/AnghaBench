
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ v; } ;
struct TYPE_10__ {TYPE_1__ hsv; } ;
struct TYPE_9__ {int v; int s; int h; } ;
struct TYPE_8__ {float r; float g; float b; } ;
typedef TYPE_2__ RGB ;
typedef TYPE_3__ HSV ;


 int DRIVER_LED_TOTAL ;
 float UINT8_MAX ;
 TYPE_2__ hsv_to_rgb (TYPE_3__) ;
 int *** ledmap ;
 int pgm_read_byte (int *) ;
 TYPE_4__ rgb_matrix_config ;
 int rgb_matrix_set_color (int,float,float,float) ;

void set_layer_color(int layer) {
  for (int i = 0; i < DRIVER_LED_TOTAL; i++) {
    HSV hsv = {
      .h = pgm_read_byte(&ledmap[layer][i][0]),
      .s = pgm_read_byte(&ledmap[layer][i][1]),
      .v = pgm_read_byte(&ledmap[layer][i][2]),
    };
    if (!hsv.h && !hsv.s && !hsv.v) {
        rgb_matrix_set_color( i, 0, 0, 0 );
    } else {
        RGB rgb = hsv_to_rgb( hsv );
        float f = (float)rgb_matrix_config.hsv.v / UINT8_MAX;
        rgb_matrix_set_color( i, f * rgb.r, f * rgb.g, f * rgb.b );
    }
  }
}
