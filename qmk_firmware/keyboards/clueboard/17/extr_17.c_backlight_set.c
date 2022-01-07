
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int OCR4A ;
 int TC4H ;
 int pwm_level ;
 int xprintf (char*,int) ;

void backlight_set(uint8_t level) {

    switch (level)
    {
        case 0:

            pwm_level = 0x54;
            break;
        case 1:

            pwm_level = 0xA8;
            break;
        case 2:

            pwm_level = 0xFF;
            break;
        case 3:

            pwm_level = 0x00;
            break;
        default:
            xprintf("Unknown level: %d\n", level);
    }


    TC4H = pwm_level >> 8;
    OCR4A = 0xFF & pwm_level;
}
