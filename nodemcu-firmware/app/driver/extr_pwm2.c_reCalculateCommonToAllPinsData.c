
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * pin; int interruptTimerCPUTicks; int interruptTimerTicks; } ;
struct TYPE_8__ {int * pin; int enabledGpioMask; } ;
struct TYPE_10__ {TYPE_2__ setupData; TYPE_1__ interruptData; } ;
typedef TYPE_3__ pwm2_module_data_t ;


 int GPIO_PIN_NUM ;
 int cpuToTimerTicks (int ) ;
 int findAllEnabledGpioMask (TYPE_3__*) ;
 int findCommonCPUTicksDivisor (TYPE_3__*) ;
 scalar_t__ isPinSetup (TYPE_3__*,int) ;
 int updatePinOffCounter (int *,int *) ;
 int updatePinPulseToInterruptsCounter (int *,int *) ;
 int updatePinResolutionToInterruptsMultiplier (int *,int ) ;

__attribute__((used)) static void reCalculateCommonToAllPinsData(pwm2_module_data_t *moduleData) {
  moduleData->interruptData.enabledGpioMask = findAllEnabledGpioMask(moduleData);
  moduleData->setupData.interruptTimerCPUTicks = findCommonCPUTicksDivisor(moduleData);
  moduleData->setupData.interruptTimerTicks = cpuToTimerTicks(moduleData->setupData.interruptTimerCPUTicks);
  for (int i = 1; i < GPIO_PIN_NUM; i++) {
    if (isPinSetup(moduleData, i)) {
      updatePinResolutionToInterruptsMultiplier(&moduleData->setupData.pin[i], moduleData->setupData.interruptTimerCPUTicks);
      updatePinPulseToInterruptsCounter(&moduleData->interruptData.pin[i], &moduleData->setupData.pin[i]);
      updatePinOffCounter(&moduleData->interruptData.pin[i], &moduleData->setupData.pin[i]);
    }
  }
}
