
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int B1 ;
 int B2 ;
 int B3 ;
 int B4 ;
 int D7 ;
 int F_ROW_MASK ;
 int WASD_MASK ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

void backlight_set(uint8_t level) {

    if (level & F_ROW_MASK) {
        writePinHigh(B1);
    } else {
        writePinLow(B1);
    }


    if (level & WASD_MASK) {
        writePinLow(B2);
        writePinLow(B3);
        writePinLow(B4);
        writePinLow(D7);
    } else {
        writePinHigh(B2);
        writePinHigh(B3);
        writePinHigh(B4);
        writePinHigh(D7);
    }
}
