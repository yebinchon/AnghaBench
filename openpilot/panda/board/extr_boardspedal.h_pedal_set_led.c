
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int GPIOB ;


 int set_gpio_output (int ,int,int) ;

void pedal_set_led(uint8_t color, bool enabled) {
  switch (color){
    case 128:
      set_gpio_output(GPIOB, 10, !enabled);
      break;
     case 129:
      set_gpio_output(GPIOB, 11, !enabled);
      break;
    default:
      break;
  }
}
