#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int /*<<< orphan*/  list_ref; int /*<<< orphan*/  err_cb_ref; int /*<<< orphan*/  sync_cb_ref; } ;
struct TYPE_3__ {int is_on_timeout; void* list_ref; void* err_cb_ref; void* sync_cb_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* repeat ; 
 scalar_t__ server_count ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* state ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6 (void *arg)
{
  (void)arg;
  FUNC3("sntp: long timer\n");
  lua_State *L = FUNC1 ();
  if (!state) {
    if (!FUNC5(L)) {
      // Good.
      FUNC2(L, LUA_REGISTRYINDEX, repeat->sync_cb_ref);
      state->sync_cb_ref = FUNC0(L, LUA_REGISTRYINDEX);
      FUNC2(L, LUA_REGISTRYINDEX, repeat->err_cb_ref);
      state->err_cb_ref = FUNC0(L, LUA_REGISTRYINDEX);
      if (server_count == 0) {
        FUNC2(L, LUA_REGISTRYINDEX, repeat->list_ref);
        state->list_ref = FUNC0(L, LUA_REGISTRYINDEX);
      }
      state->is_on_timeout = 1;
      FUNC4(L);
    }
  }
}