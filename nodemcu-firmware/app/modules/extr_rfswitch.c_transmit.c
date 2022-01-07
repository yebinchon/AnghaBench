
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int high; int low; } ;
typedef TYPE_1__ HighLow ;


 int os_delay_us (int) ;
 int platform_gpio_write (int,int) ;

void transmit(HighLow pulses, bool invertedSignal, int pulseLength, int pin) {
  platform_gpio_write(pin, !invertedSignal);
  os_delay_us(pulseLength * pulses.high);
  platform_gpio_write(pin, invertedSignal);
  os_delay_us(pulseLength * pulses.low);
}
