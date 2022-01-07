
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LAYER_INDICATOR_LED_0 ;
 int LAYER_INDICATOR_LED_1 ;
 int writePinLow (int ) ;

void shutdown_user() {

  writePinLow(LAYER_INDICATOR_LED_0);
  writePinLow(LAYER_INDICATOR_LED_1);
}
