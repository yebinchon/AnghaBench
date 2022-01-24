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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {TYPE_1__* pin; } ;
struct TYPE_6__ {TYPE_2__ setupData; } ;
struct TYPE_4__ {int pulseResolutions; } ;

/* Variables and functions */
 int GPIO_PIN_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_3__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(lua_State *L) {
  int pos = 0;
  while (true) {
    int pin = FUNC2(L, ++pos, -1);
    if (pin == -1) {
      break;
    }
    FUNC0(L, pin > 0 && pin <= GPIO_PIN_NUM, pos, "invalid pin number");

    int duty = FUNC2(L, ++pos, -1);
    FUNC0(L, duty >= 0 && duty <= FUNC3()->setupData.pin[pin].pulseResolutions, pos, "invalid duty");

    if (!FUNC4(pin)) {
      return FUNC1(L, "pwm2 : pin=%d is not setup yet", pin);
    }
    FUNC5(pin, duty);
  }
  return 0;
}