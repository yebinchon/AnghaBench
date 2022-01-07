
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef float int8_t ;
typedef int int16_t ;
struct TYPE_2__ {int mods; } ;


 int KC_LSFT ;
 int MOD_BIT (int ) ;
 float abs (int) ;
 int axisCoordinate (int ,int ) ;
 TYPE_1__* keyboard_report ;
 float maxCursorSpeed ;
 float precisionSpeed ;
 float speedRegulator ;

int8_t axisToMouseComponent(uint8_t pin, int16_t origin, uint8_t maxSpeed, int8_t polarity) {
    int coordinate = axisCoordinate(pin, origin);
    if (coordinate == 0) {
        return 0;
    } else {
        float percent = (float)coordinate / 100;
        if (keyboard_report->mods & MOD_BIT(KC_LSFT)) {
            return percent * precisionSpeed * polarity * (abs(coordinate) / speedRegulator);
        } else {
            return percent * maxCursorSpeed * polarity * (abs(coordinate) / speedRegulator);
        }
    }
}
