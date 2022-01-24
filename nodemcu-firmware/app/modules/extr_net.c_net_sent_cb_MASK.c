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
typedef  int /*<<< orphan*/  u16_t ;
struct tcp_pcb {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {scalar_t__ cb_sent_ref; } ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ self_ref; TYPE_1__ client; int /*<<< orphan*/  pcb; } ;
typedef  TYPE_2__ lnet_userdata ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_ABRT ; 
 int /*<<< orphan*/  ERR_OK ; 
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ TYPE_TCP_CLIENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static err_t FUNC3(void *arg, struct tcp_pcb *tpcb, u16_t len) {
  lnet_userdata *ud = (lnet_userdata*)arg;
  if (!ud || !ud->pcb || ud->type != TYPE_TCP_CLIENT || ud->self_ref == LUA_NOREF) return ERR_ABRT;
  if (ud->client.cb_sent_ref == LUA_NOREF) return ERR_OK;
  lua_State *L = FUNC1();
  FUNC2(L, LUA_REGISTRYINDEX, ud->client.cb_sent_ref);
  FUNC2(L, LUA_REGISTRYINDEX, ud->self_ref);
  FUNC0(L, 1, 0);
  return ERR_OK;
}