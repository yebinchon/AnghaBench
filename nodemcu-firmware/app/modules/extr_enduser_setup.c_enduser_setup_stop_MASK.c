#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {int /*<<< orphan*/  callbackDone; scalar_t__ success; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int STATION_MODE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  manual ; 
 TYPE_1__* state ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(lua_State* L)
{
  FUNC0("enduser_setup_stop");

  if (!manual)
  {
    FUNC1();
  }
  if (state != NULL && state->success && !state->callbackDone)
  {
    FUNC7(STATION_MODE | FUNC6());
    FUNC8();
    FUNC2();
  }
  FUNC3();
  FUNC5();
  FUNC4();

  return 0;
}