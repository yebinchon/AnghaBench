
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {TYPE_1__* pin; } ;
struct TYPE_7__ {TYPE_2__ setupData; } ;
typedef TYPE_3__ pwm2_module_data_t ;
struct TYPE_5__ {scalar_t__ pulseResolutions; int resolutionCPUTicks; } ;


 int GPIO_PIN_NUM ;
 int findGreatesCommonDividerForTimerTicks (int ,int ) ;

__attribute__((used)) static uint32_t findCommonCPUTicksDivisor(pwm2_module_data_t *moduleData) {
  uint32_t gcdCPUTicks = 0;
  for (int i = 1; i < GPIO_PIN_NUM; i++) {
    if (moduleData->setupData.pin[i].pulseResolutions > 0) {
      gcdCPUTicks = findGreatesCommonDividerForTimerTicks(moduleData->setupData.pin[i].resolutionCPUTicks, gcdCPUTicks);
    }
  }
  return gcdCPUTicks;
}
