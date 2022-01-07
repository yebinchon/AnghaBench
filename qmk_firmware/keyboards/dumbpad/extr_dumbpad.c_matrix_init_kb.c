
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LAYER_INDICATOR_LED_0 ;
 int LAYER_INDICATOR_LED_1 ;
 int matrix_init_user () ;
 int wait_ms (int) ;
 int writePin (int ,int) ;

void matrix_init_kb(void) {


  for (int i = 0; i < 2; i++) {
    writePin(LAYER_INDICATOR_LED_0, 1);
    writePin(LAYER_INDICATOR_LED_1, 0);
    wait_ms(100);
    writePin(LAYER_INDICATOR_LED_0, 1);
    writePin(LAYER_INDICATOR_LED_1, 1);
    wait_ms(100);
    writePin(LAYER_INDICATOR_LED_0, 0);
    writePin(LAYER_INDICATOR_LED_1, 1);
    wait_ms(100);
    writePin(LAYER_INDICATOR_LED_0, 0);
    writePin(LAYER_INDICATOR_LED_1, 0);
    wait_ms(100);
  }

  matrix_init_user();
}
