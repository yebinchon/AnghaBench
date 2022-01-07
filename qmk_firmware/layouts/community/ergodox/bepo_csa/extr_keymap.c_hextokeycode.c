
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 scalar_t__ KC_A ;
 scalar_t__ KC_P0 ;
 scalar_t__ KC_P1 ;

uint16_t hextokeycode(int hex) {
    if (hex == 0x0) {
        return KC_P0;
    } else if (hex < 0xA) {
        return KC_P1 + (hex - 0x1);
    } else {
        return KC_A + (hex - 0xA);
    }
}
