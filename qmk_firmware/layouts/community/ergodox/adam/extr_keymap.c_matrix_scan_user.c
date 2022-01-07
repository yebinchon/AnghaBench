
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int biton32 (int ) ;
 int layer_state ;

void matrix_scan_user(void) {
  uint8_t layer = biton32(layer_state);

  switch (layer) {

      case 1:
          break;
      case 2:
          break;
      default:

          break;
  }
}
