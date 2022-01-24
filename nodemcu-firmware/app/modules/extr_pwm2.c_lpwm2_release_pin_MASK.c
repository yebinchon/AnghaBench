#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int GPIO_PIN_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(lua_State *L) {
  if (FUNC3()) {
    return FUNC1(L, "pwm2 : pwm is started, stop it first.");
  }
  int pos = 0;
  while (true) {
    int pin = FUNC2(L, ++pos, -1);
    if (pin == -1) {
      break;
    }
    FUNC0(L, pin > 0 && pin <= GPIO_PIN_NUM, pos, "invalid pin number");
    FUNC4(2);
  }
  return 0;
}