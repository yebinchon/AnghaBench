
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int LED_GREEN ;
 int LED_RED ;


 int biton32 (int ) ;
 int layer_state ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

void matrix_scan_user(void) {
    uint8_t layer = biton32(layer_state);

    switch (layer) {
        case 129:
            writePinHigh(LED_RED);
            break;
        case 128:
            writePinHigh(LED_GREEN);
            break;
        default:
            writePinLow(LED_GREEN);
            writePinLow(LED_RED);
    }
}
