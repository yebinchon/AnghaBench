#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int next_adjust; } ;
typedef  TYPE_1__ pulse_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 TYPE_1__* active_pulser ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static int FUNC3(lua_State *L) {
  pulse_t *pulser = FUNC2(L, 1, "gpio.pulse");

  if (active_pulser != pulser) {
    return 0;
  }

  int offset = FUNC1(L, 2);
  // This will alter the next adjustable
  pulser->next_adjust = offset;

  int rc = FUNC0(L, active_pulser);

  return rc;
}