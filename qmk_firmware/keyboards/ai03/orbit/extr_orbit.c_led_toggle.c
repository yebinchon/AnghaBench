
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B5 ;
 int B6 ;
 int C6 ;
 int C7 ;
 int F6 ;
 int F7 ;
 scalar_t__ isLeftHand ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

void led_toggle(int id, bool on) {

 if (isLeftHand) {
  switch(id) {
   case 0:

    if (on)

     writePinHigh(C6);
    else

     writePinLow(C6);
    break;
   case 1:

    if (on)

     writePinHigh(B6);
    else

     writePinLow(B6);
    break;
   case 2:

    if (on)

     writePinHigh(B5);
    else

     writePinLow(B5);
    break;
   default:
    break;
  }
 } else {
  switch(id) {
   case 3:

    if (on)

     writePinHigh(F6);
    else

     writePinLow(F6);
    break;
   case 4:

    if (on)

     writePinHigh(F7);
    else

     writePinLow(F7);
    break;
   case 5:

    if (on)

     writePinHigh(C7);
    else

     writePinLow(C7);
    break;
   default:
    break;
  }
 }
}
