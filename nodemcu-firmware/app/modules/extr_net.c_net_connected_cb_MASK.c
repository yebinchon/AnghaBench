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
struct tcp_pcb {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {scalar_t__ cb_connect_ref; } ;
struct TYPE_4__ {scalar_t__ self_ref; TYPE_1__ client; struct tcp_pcb* pcb; } ;
typedef  TYPE_2__ lnet_userdata ;
typedef  scalar_t__ err_t ;

/* Variables and functions */
 scalar_t__ ERR_ABRT ; 
 scalar_t__ ERR_OK ; 
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (void*,scalar_t__) ; 

__attribute__((used)) static err_t FUNC4(void *arg, struct tcp_pcb *tpcb, err_t err) {
  lnet_userdata *ud = (lnet_userdata*)arg;
  if (!ud || ud->pcb != tpcb) return ERR_ABRT;
  if (err != ERR_OK) {
    FUNC3(arg, err);
    return ERR_ABRT;
  }
  lua_State *L = FUNC1();
  if (ud->self_ref != LUA_NOREF && ud->client.cb_connect_ref != LUA_NOREF) {
    FUNC2(L, LUA_REGISTRYINDEX, ud->client.cb_connect_ref);
    FUNC2(L, LUA_REGISTRYINDEX, ud->self_ref);
    FUNC0(L, 1, 0);
  }
  return ERR_OK;
}