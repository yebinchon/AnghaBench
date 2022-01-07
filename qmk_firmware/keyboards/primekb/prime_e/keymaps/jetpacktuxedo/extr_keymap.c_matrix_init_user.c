
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAPS_LED_PIN ;
 int NUM_LED_PIN ;
 int SCROLL_LED_PIN ;
 int setPinOutput (int ) ;
 int writePinLow (int ) ;

void matrix_init_user(void) {

  setPinOutput(CAPS_LED_PIN);
  writePinLow(CAPS_LED_PIN);

  setPinOutput(NUM_LED_PIN);
  writePinLow(NUM_LED_PIN);

  setPinOutput(SCROLL_LED_PIN);
  writePinLow(SCROLL_LED_PIN);
}
