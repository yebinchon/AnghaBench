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
typedef  int /*<<< orphan*/  pulse_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  TIMER_OWNER ; 
 int /*<<< orphan*/ * active_pulser ; 
 int active_pulser_ref ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(lua_State *L) {
  pulse_t *pulser = FUNC1(L, 1, "gpio.pulse");

  if (active_pulser != pulser) {
    return 0;
  }

  // Shut off the timer
  FUNC3(TIMER_OWNER);

  int rc = FUNC0(L, active_pulser);

  active_pulser = NULL;

  int pulser_ref = active_pulser_ref;
  active_pulser_ref = LUA_NOREF;
  FUNC2(L, LUA_REGISTRYINDEX, pulser_ref);

  return rc;
}