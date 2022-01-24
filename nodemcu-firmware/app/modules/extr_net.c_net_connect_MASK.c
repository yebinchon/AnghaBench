#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_14__ {scalar_t__ cb_connect_ref; int /*<<< orphan*/  wait_dns; } ;
struct TYPE_15__ {scalar_t__ type; scalar_t__ self_ref; TYPE_3__* tcp_pcb; TYPE_1__ client; scalar_t__ pcb; } ;
typedef  TYPE_2__ lnet_userdata ;
typedef  int /*<<< orphan*/  ip_addr_t ;
typedef  scalar_t__ err_t ;
struct TYPE_16__ {scalar_t__ remote_port; } ;

/* Variables and functions */
 scalar_t__ ERR_INPROGRESS ; 
 scalar_t__ ERR_OK ; 
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ TYPE_TCP_CLIENT ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (char const*,int /*<<< orphan*/ *,TYPE_2__*),TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char const*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  net_err_cb ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  net_sent_cb ; 
 int /*<<< orphan*/  net_tcp_recv_cb ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int /*<<< orphan*/ ) ; 

int FUNC21( lua_State *L ) {
  lnet_userdata *ud = FUNC14(L);
  if (!ud || ud->type != TYPE_TCP_CLIENT)
    return FUNC4(L, "invalid user data");
  if (ud->pcb)
    return FUNC4(L, "already connected");
  uint16_t port = FUNC2(L, 2);
  if (port == 0)
    return FUNC4(L, "specify port");
  const char *domain = "127.0.0.1";
  if (FUNC10(L, 3)) {
    size_t dl = 0;
    domain = FUNC3(L, 3, &dl);
  }
  if (FUNC7(L) > 3) {
    FUNC1(L, FUNC8(L, 4) || FUNC9(L, 4), 4, "not a function");
    FUNC11(L, 4);
    FUNC6(L, LUA_REGISTRYINDEX, ud->client.cb_connect_ref);
    ud->client.cb_connect_ref = FUNC5(L, LUA_REGISTRYINDEX);
  }
  ud->tcp_pcb = FUNC18();
  if (!ud->tcp_pcb)
    return FUNC4(L, "cannot allocate PCB");
  FUNC16(ud->tcp_pcb, ud);
  FUNC17(ud->tcp_pcb, net_err_cb);
  FUNC19(ud->tcp_pcb, net_tcp_recv_cb);
  FUNC20(ud->tcp_pcb, net_sent_cb);
  ud->tcp_pcb->remote_port = port;
  ip_addr_t addr;
  ud->client.wait_dns ++;
  int unref = 0;
  if (ud->self_ref == LUA_NOREF) {
    unref = 1;
    FUNC11(L, 1);
    ud->self_ref = FUNC5(L, LUA_REGISTRYINDEX);
  }
  err_t err = FUNC0(domain, &addr, net_dns_cb, ud);
  if (err == ERR_OK) {
    FUNC13(domain, &addr, ud);
  } else if (err != ERR_INPROGRESS) {
    ud->client.wait_dns --;
    if (unref) {
      FUNC6(L, LUA_REGISTRYINDEX, ud->self_ref);
      ud->self_ref = LUA_NOREF;
    }
    FUNC15(ud->tcp_pcb);
    ud->tcp_pcb = NULL;
    return FUNC12(L, err);
  }
  return 0;
}