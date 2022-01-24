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
struct TYPE_3__ {int cb_reconnect_ref; int cb_disconnect_ref; scalar_t__ wait_dns; } ;
struct TYPE_4__ {scalar_t__ type; int self_ref; TYPE_1__ client; int /*<<< orphan*/ * pcb; } ;
typedef  TYPE_2__ lnet_userdata ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  LUA_GCRESTART ; 
 int /*<<< orphan*/  LUA_GCSTOP ; 
 int LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ TYPE_TCP_CLIENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(void *arg, err_t err) {
  lnet_userdata *ud = (lnet_userdata*)arg;
  if (!ud || ud->type != TYPE_TCP_CLIENT || ud->self_ref == LUA_NOREF) return;
  ud->pcb = NULL; // Will be freed at LWIP level
  lua_State *L = FUNC3();
  int ref;
  if (err != ERR_OK && ud->client.cb_reconnect_ref != LUA_NOREF)
    ref = ud->client.cb_reconnect_ref;
  else ref = ud->client.cb_disconnect_ref;
  if (ref != LUA_NOREF) {
    FUNC5(L, LUA_REGISTRYINDEX, ref);
    FUNC5(L, LUA_REGISTRYINDEX, ud->self_ref);
    FUNC4(L, err);
    FUNC1(L, 2, 0);
  }
  if (ud->client.wait_dns == 0) {
    FUNC2(L, LUA_GCSTOP, 0);
    FUNC0(L, LUA_REGISTRYINDEX, ud->self_ref);
    ud->self_ref = LUA_NOREF;
    FUNC2(L, LUA_GCRESTART, 0);
  }
}