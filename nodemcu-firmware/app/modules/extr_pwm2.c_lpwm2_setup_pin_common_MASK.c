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
 int const GPIO_PIN_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int const,int const,int const,int const,int const) ; 

__attribute__((used)) static int FUNC6(lua_State *L, const bool isFreqHz) {
  if (FUNC4()) {
    return FUNC1(L, "pwm2 : already started, stop it before setting up pins.");
  }
  const int pin = FUNC3(L, 1);
  const int freq = FUNC3(L, 2);
  const int resolution = FUNC3(L, 3);
  const int initDuty = FUNC3(L, 4);
  const int freqFractions = FUNC2(L, 5, 1);

  FUNC0(L, pin > 0 && pin <= GPIO_PIN_NUM, 1, "invalid pin number");
  FUNC0(L, freq > 0, 2, "invalid frequency");
  FUNC0(L, resolution > 0, 3, "invalid frequency resolution");
  FUNC0(L, initDuty >= 0 && initDuty <= resolution, 4, "invalid duty");
  FUNC0(L, freqFractions > 0, 5, "invalid frequency fractions");

  if (isFreqHz) {
    FUNC5(pin, freqFractions, freq, resolution, initDuty);
  } else {
    FUNC5(pin, freq, freqFractions, resolution, initDuty);
  }
  return 0;
}