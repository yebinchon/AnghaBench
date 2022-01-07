
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B0 ;
 scalar_t__ IS_LAYER_ON (int) ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

void matrix_scan_user(void) {

  if (IS_LAYER_ON(1)) {
    writePinLow(B0);
  } else {
    writePinHigh(B0);
  }
}
