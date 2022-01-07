
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint16_t ;


 int GPIO_ID_PIN (int ) ;
 int * pin_num ;

__attribute__((used)) static uint16_t getPinGpioMask(uint8_t pin) {
  return 1 << GPIO_ID_PIN(pin_num[pin]);
}
