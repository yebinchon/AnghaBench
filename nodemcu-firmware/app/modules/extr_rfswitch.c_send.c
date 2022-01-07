
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int invertedSignal; int syncFactor; int zero; int one; } ;
typedef TYPE_1__ Protocol ;


 int PLATFORM_GPIO_FLOAT ;
 int PLATFORM_GPIO_OUTPUT ;
 int platform_gpio_mode (unsigned long,int ,int ) ;
 TYPE_1__* proto ;
 int transmit (int ,int ,unsigned long,unsigned long) ;

void send(unsigned long protocol_id, unsigned long pulse_length, unsigned long repeat, unsigned long pin, unsigned long value, unsigned int length) {
  platform_gpio_mode(pin, PLATFORM_GPIO_OUTPUT, PLATFORM_GPIO_FLOAT);
  Protocol p = proto[protocol_id-1];
  for (int nRepeat = 0; nRepeat < repeat; nRepeat++) {
    for (int i = length-1; i >= 0; i--) {
      if (value & (1L << i))
        transmit(p.one, p.invertedSignal, pulse_length, pin);
      else
        transmit(p.zero, p.invertedSignal, pulse_length, pin);
    }
    transmit(p.syncFactor, p.invertedSignal, pulse_length, pin);
  }
}
