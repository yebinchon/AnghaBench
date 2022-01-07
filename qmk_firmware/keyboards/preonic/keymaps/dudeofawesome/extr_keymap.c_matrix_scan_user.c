
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PLAY_SONG (int ) ;

 int biton32 (int ) ;
 int layer_state ;
 int numpadActive ;
 int tone_numpad_on ;

void matrix_scan_user (void) {
  uint8_t layer = biton32(layer_state);

  switch (layer) {
    case 128:
      if (!numpadActive) {
        numpadActive = 1;
        PLAY_SONG(tone_numpad_on);
      }
      break;
    default:
      if (numpadActive) {
        numpadActive = 0;
      }
  }
}
