
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;







 int rgblight_setrgb (int,int,int) ;

void LayerLEDSet(uint8_t layr) {

    switch (layr) {
        case 128:
            rgblight_setrgb(0,20, 0);
        break;
        case 130:

            rgblight_setrgb(20,0,35);
            break;
        case 131:

           rgblight_setrgb(0,20,20);
            break;
        case 129:

            rgblight_setrgb(25,20,0);
            break;
        case 132:

           rgblight_setrgb(20,0,0);
            break;
        default:
            rgblight_setrgb(20,2,20);
            break;
    }

 return;

}
