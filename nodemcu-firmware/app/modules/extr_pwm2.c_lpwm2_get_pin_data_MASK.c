#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8 ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {TYPE_1__* pin; } ;
struct TYPE_6__ {TYPE_2__ setupData; } ;
struct TYPE_4__ {int /*<<< orphan*/  resolutionInterruptCounterMultiplier; int /*<<< orphan*/  resolutionCPUTicks; int /*<<< orphan*/  frequencyDivisor; int /*<<< orphan*/  divisableFrequency; int /*<<< orphan*/  pulseResolutions; int /*<<< orphan*/  duty; } ;

/* Variables and functions */
 size_t const GPIO_PIN_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (size_t const) ; 

__attribute__((used)) static int FUNC5(lua_State *L) {
  const uint8 pin = FUNC1(L, 1);
  FUNC0(L, pin > 0 && pin <= GPIO_PIN_NUM, 1, "invalid pin number");
  FUNC2(L, FUNC4(pin));
  FUNC2(L, FUNC3()->setupData.pin[pin].duty);
  FUNC2(L, FUNC3()->setupData.pin[pin].pulseResolutions);
  FUNC2(L, FUNC3()->setupData.pin[pin].divisableFrequency);
  FUNC2(L, FUNC3()->setupData.pin[pin].frequencyDivisor);
  FUNC2(L, FUNC3()->setupData.pin[pin].resolutionCPUTicks);
  FUNC2(L, FUNC3()->setupData.pin[pin].resolutionInterruptCounterMultiplier);
  return 7;
}