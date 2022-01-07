
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_10__ {TYPE_3__* pin; } ;
struct TYPE_8__ {TYPE_1__* pin; } ;
struct TYPE_11__ {TYPE_4__ interruptData; TYPE_2__ setupData; } ;
typedef TYPE_5__ pwm2_module_data_t ;
struct TYPE_9__ {int gpioMask; } ;
struct TYPE_7__ {scalar_t__ pulseResolutions; } ;


 int GPIO_PIN_NUM ;

__attribute__((used)) static uint16_t findAllEnabledGpioMask(pwm2_module_data_t *moduleData) {
  uint16_t enableGpioMask = 0;
  for (int i = 1; i < GPIO_PIN_NUM; i++) {
    if (moduleData->setupData.pin[i].pulseResolutions > 0) {
      enableGpioMask |= moduleData->interruptData.pin[i].gpioMask;
    }
  }
  return enableGpioMask;
}
