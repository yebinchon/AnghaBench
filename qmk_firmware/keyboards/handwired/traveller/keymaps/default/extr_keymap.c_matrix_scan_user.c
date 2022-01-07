
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int LayerLEDSet (scalar_t__) ;
 scalar_t__ biton32 (int ) ;
 int layer_state ;
 scalar_t__ old_layer ;

void matrix_scan_user(void) {
         uint8_t layer = biton32(layer_state);
         if (old_layer != layer) {
           LayerLEDSet(layer);
           old_layer=layer;
           }
}
