
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int * pin; } ;
typedef TYPE_1__ pwm2_interrupt_handler_data_t ;


 int GPIO_PIN_NUM ;
 int computeIsPinOn (int *,int *) ;
 scalar_t__ isPinSetup2 (TYPE_1__*,int) ;

__attribute__((used)) static inline uint16_t findAllPinOns(pwm2_interrupt_handler_data_t *data) {
  uint16_t maskOn = 0;
  for (int i = 1; i < GPIO_PIN_NUM; i++) {
    if (isPinSetup2(data, i)) {
      computeIsPinOn(&data->pin[i], &maskOn);
    }
  }
  return maskOn;
}
