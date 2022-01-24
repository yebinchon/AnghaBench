#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int /*<<< orphan*/  list_ref; int /*<<< orphan*/  err_cb_ref; int /*<<< orphan*/  sync_cb_ref; int /*<<< orphan*/  pcb; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* state ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4 (lua_State *L)
{
  FUNC2 (&state->timer);
  FUNC3 (state->pcb);
  FUNC1 (L, LUA_REGISTRYINDEX, state->sync_cb_ref);
  FUNC1 (L, LUA_REGISTRYINDEX, state->err_cb_ref);
  FUNC1 (L, LUA_REGISTRYINDEX, state->list_ref);
  FUNC0 (state);
  state = 0;
}