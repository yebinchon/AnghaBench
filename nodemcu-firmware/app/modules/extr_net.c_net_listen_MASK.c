#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct tcp_pcb {int /*<<< orphan*/  so_options; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_6__ {void* cb_accept_ref; } ;
struct TYPE_7__ {int type; scalar_t__ self_ref; int /*<<< orphan*/ * udp_pcb; struct tcp_pcb* tcp_pcb; TYPE_1__ server; scalar_t__ pcb; } ;
typedef  TYPE_2__ lnet_userdata ;
typedef  int /*<<< orphan*/  ip_addr_t ;
typedef  scalar_t__ err_t ;

/* Variables and functions */
 scalar_t__ ERR_MEM ; 
 scalar_t__ ERR_OK ; 
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  SOF_REUSEADDR ; 
 int TYPE_TCP_CLIENT ; 
#define  TYPE_TCP_SERVER 129 
#define  TYPE_UDP_SOCKET 128 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  net_accept_cb ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  net_udp_recv_cb ; 
 int /*<<< orphan*/  FUNC13 (struct tcp_pcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct tcp_pcb*,TYPE_2__*) ; 
 scalar_t__ FUNC15 (struct tcp_pcb*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct tcp_pcb*) ; 
 struct tcp_pcb* FUNC17 (struct tcp_pcb*) ; 
 struct tcp_pcb* FUNC18 () ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

int FUNC23( lua_State *L ) {
  lnet_userdata *ud = FUNC12(L);
  if (!ud || ud->type == TYPE_TCP_CLIENT)
    return FUNC2(L, "invalid user data");
  if (ud->pcb)
    return FUNC2(L, "already listening");
  int stack = 2;
  uint16_t port = 0;
  const char *domain = "0.0.0.0";
  if (FUNC7(L, stack))
    port = FUNC10(L, stack++);
  if (FUNC8(L, stack)) {
    size_t dl = 0;
    domain = FUNC1(L, stack++, &dl);
  }
  ip_addr_t addr;
  if (!FUNC0(domain, &addr))
    return FUNC2(L, "invalid IP address");
  if (ud->type == TYPE_TCP_SERVER) {
    if (FUNC5(L, stack) || FUNC6(L, stack)) {
      FUNC9(L, stack++);
      FUNC4(L, LUA_REGISTRYINDEX, ud->server.cb_accept_ref);
      ud->server.cb_accept_ref = FUNC3(L, LUA_REGISTRYINDEX);
    } else {
      return FUNC2(L, "need callback");
    }
  }
  err_t err = ERR_OK;
  switch (ud->type) {
    case TYPE_TCP_SERVER:
      ud->tcp_pcb = FUNC18();
      if (!ud->tcp_pcb)
        return FUNC2(L, "cannot allocate PCB");
      ud->tcp_pcb->so_options |= SOF_REUSEADDR;
      err = FUNC15(ud->tcp_pcb, &addr, port);
      if (err == ERR_OK) {
        FUNC14(ud->tcp_pcb, ud);
        struct tcp_pcb *pcb = FUNC17(ud->tcp_pcb);
        if (!pcb) {
          err = ERR_MEM;
        } else {
          ud->tcp_pcb = pcb;
          FUNC13(ud->tcp_pcb, net_accept_cb);
        }
      }
      break;
    case TYPE_UDP_SOCKET:
      ud->udp_pcb = FUNC20();
      if (!ud->udp_pcb)
        return FUNC2(L, "cannot allocate PCB");
      FUNC21(ud->udp_pcb, net_udp_recv_cb, ud);
      err = FUNC19(ud->udp_pcb, &addr, port);
      break;
  }
  if (err != ERR_OK) {
    switch (ud->type) {
      case TYPE_TCP_SERVER:
        FUNC16(ud->tcp_pcb);
        ud->tcp_pcb = NULL;
        break;
      case TYPE_UDP_SOCKET:
        FUNC22(ud->udp_pcb);
        ud->udp_pcb = NULL;
        break;
    }
    return FUNC11(L, err);
  }
  if (ud->self_ref == LUA_NOREF) {
    FUNC9(L, 1);
    ud->self_ref = FUNC3(L, LUA_REGISTRYINDEX);
  }
  return 0;
}