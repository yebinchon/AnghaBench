
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_5__ {TYPE_1__* pin; } ;
typedef TYPE_2__ pwm2_interrupt_handler_data_t ;
struct TYPE_4__ {scalar_t__ gpioMask; } ;



__attribute__((used)) static inline bool isPinSetup2(const pwm2_interrupt_handler_data_t *data, const uint8_t pin) {
  return data->pin[pin].gpioMask > 0;
}
