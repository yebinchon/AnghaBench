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
struct TYPE_2__ {int running; int /*<<< orphan*/  mode_delay; int /*<<< orphan*/  os_t; scalar_t__ counter_mode_step; scalar_t__ counter_mode_call; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LIBRARY_NOT_INITIALIZED_ERROR_MSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* state ; 
 int /*<<< orphan*/  ws2812_effects_loop ; 

__attribute__((used)) static int FUNC4(lua_State* L) {

  //NODE_DBG("pin:%d, level:%d \n", pin, level);
  FUNC0(L, state != NULL, 1, LIBRARY_NOT_INITIALIZED_ERROR_MSG);
  if (state != NULL) {
    FUNC2(&(state->os_t));
    state->running = 1;
    state->counter_mode_call = 0;
    state->counter_mode_step = 0;
    // set the timer
    FUNC3(&(state->os_t), ws2812_effects_loop, NULL);
    FUNC1(&(state->os_t), state->mode_delay, FALSE);
  }
  return 0;
}