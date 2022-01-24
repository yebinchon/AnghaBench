#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int server_pos; int last_server_pos; int /*<<< orphan*/  pcb; void* list_ref; void* err_cb_ref; void* sync_cb_ref; } ;
typedef  TYPE_1__ sntp_state_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ ERR_OK ; 
 int /*<<< orphan*/  IP_ADDR_ANY ; 
 void* LUA_NOREF ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  on_recv ; 
 TYPE_1__* state ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC5(lua_State *L) {
  state = (sntp_state_t *)FUNC0 (sizeof (sntp_state_t));
  if (!state)
    return ("out of memory");

  FUNC1 (state, 0, sizeof (sntp_state_t));

  state->sync_cb_ref = LUA_NOREF;
  state->err_cb_ref = LUA_NOREF;
  state->list_ref = LUA_NOREF;

  state->pcb = FUNC3 ();
  if (!state->pcb)
    return ("out of memory");

  if (FUNC2 (state->pcb, IP_ADDR_ANY, 0) != ERR_OK)
    return ("no port available");

  FUNC4 (state->pcb, on_recv, L);

  state->server_pos = -1;
  state->last_server_pos = -1;

  return NULL;
}