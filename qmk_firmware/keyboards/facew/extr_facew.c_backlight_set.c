
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int D0 ;
 int D1 ;
 int D4 ;
 int D6 ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

void backlight_set(uint8_t level) {
 if (level == 0) {

  writePinLow(D0);
  writePinLow(D1);
  writePinLow(D4);
  writePinLow(D6);
 } else {

  writePinHigh(D0);
  writePinHigh(D1);
  writePinHigh(D4);
  writePinHigh(D6);
 }
}
