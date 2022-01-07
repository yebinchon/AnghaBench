
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BSP_LED_Toggle (int ) ;
 int Delay (int) ;
 int LED4 ;

void Error_Handler() {

  while (1) {
    BSP_LED_Toggle(LED4);
    Delay(100);
  }
}
