
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int HAS_FLAGS (int ,int ) ;
 int OLED_DISPLAY_HEIGHT ;
 int OLED_DISPLAY_WIDTH ;
 int OLED_FONT_WIDTH ;
 int OLED_ROTATION_90 ;
 int oled_rotation ;

uint8_t oled_max_chars(void) {
    if (!HAS_FLAGS(oled_rotation, OLED_ROTATION_90)) {
        return OLED_DISPLAY_WIDTH / OLED_FONT_WIDTH;
    }
    return OLED_DISPLAY_HEIGHT / OLED_FONT_WIDTH;
}
