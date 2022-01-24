#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_7__ {scalar_t__ cb_dns_ref; scalar_t__ wait_dns; } ;
struct TYPE_8__ {scalar_t__ self_ref; scalar_t__ type; TYPE_1__ client; scalar_t__ pcb; TYPE_4__* tcp_pcb; } ;
typedef  TYPE_2__ lnet_userdata ;
struct TYPE_9__ {int addr; } ;
typedef  TYPE_3__ ip_addr_t ;
struct TYPE_10__ {scalar_t__ state; int /*<<< orphan*/  remote_port; } ;

/* Variables and functions */
 scalar_t__ CLOSED ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  IPSTR ; 
 int /*<<< orphan*/  LUA_GCRESTART ; 
 int /*<<< orphan*/  LUA_GCSTOP ; 
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ TYPE_TCP_CLIENT ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  net_connected_cb ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(const char *name, ip_addr_t *ipaddr, void *arg) {
  ip_addr_t addr;
  if (ipaddr != NULL) addr = *ipaddr;
  else addr.addr = 0xFFFFFFFF;
  lnet_userdata *ud = (lnet_userdata*)arg;
  if (!ud) return;
  lua_State *L = FUNC6();
  if (ud->self_ref != LUA_NOREF && ud->client.cb_dns_ref != LUA_NOREF) {
    FUNC9(L, LUA_REGISTRYINDEX, ud->client.cb_dns_ref);
    FUNC9(L, LUA_REGISTRYINDEX, ud->self_ref);
    if (addr.addr != 0xFFFFFFFF) {
      char iptmp[16];
      FUNC1(iptmp, 16);
      FUNC2(iptmp, IPSTR, FUNC0(&addr.addr));
      FUNC8(L, iptmp);
    } else {
      FUNC7(L);
    }
    FUNC4(L, 2, 0);
  }
  ud->client.wait_dns --;
  if (ud->pcb && ud->type == TYPE_TCP_CLIENT && ud->tcp_pcb->state == CLOSED) {
    FUNC10(ud->tcp_pcb, &addr, ud->tcp_pcb->remote_port, net_connected_cb);
  } else if (!ud->pcb && ud->client.wait_dns == 0) {
    FUNC5(L, LUA_GCSTOP, 0);
    FUNC3(L, LUA_REGISTRYINDEX, ud->self_ref);
    ud->self_ref = LUA_NOREF;
    FUNC5(L, LUA_GCRESTART, 0);
  }
}