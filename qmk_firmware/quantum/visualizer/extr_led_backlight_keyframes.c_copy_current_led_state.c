
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int LED_DISPLAY ;
 int NUM_COLS ;
 int NUM_ROWS ;
 int gdispGGetPixelColor (int ,int,int) ;

__attribute__((used)) static void copy_current_led_state(uint8_t* dest) {
    for (int i = 0; i < NUM_ROWS; i++) {
        for (int j = 0; j < NUM_COLS; j++) {
            dest[i * NUM_COLS + j] = gdispGGetPixelColor(LED_DISPLAY, j, i);
        }
    }
}
