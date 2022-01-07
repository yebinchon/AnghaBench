
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pin_t ;


 int writePinHigh (int ) ;
 int writePinLow (int ) ;

void backlight_off(pin_t backlight_pin) {

    writePinHigh(backlight_pin);



}
