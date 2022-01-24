#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * pin; int /*<<< orphan*/  interruptTimerCPUTicks; int /*<<< orphan*/  interruptTimerTicks; } ;
struct TYPE_8__ {int /*<<< orphan*/ * pin; int /*<<< orphan*/  enabledGpioMask; } ;
struct TYPE_10__ {TYPE_2__ setupData; TYPE_1__ interruptData; } ;
typedef  TYPE_3__ pwm2_module_data_t ;

/* Variables and functions */
 int GPIO_PIN_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(pwm2_module_data_t *moduleData) {
  moduleData->interruptData.enabledGpioMask = FUNC1(moduleData);
  moduleData->setupData.interruptTimerCPUTicks = FUNC2(moduleData);
  moduleData->setupData.interruptTimerTicks = FUNC0(moduleData->setupData.interruptTimerCPUTicks);
  for (int i = 1; i < GPIO_PIN_NUM; i++) {
    if (FUNC3(moduleData, i)) {
      FUNC6(&moduleData->setupData.pin[i], moduleData->setupData.interruptTimerCPUTicks);
      FUNC5(&moduleData->interruptData.pin[i], &moduleData->setupData.pin[i]);
      FUNC4(&moduleData->interruptData.pin[i], &moduleData->setupData.pin[i]);
    }
  }
}