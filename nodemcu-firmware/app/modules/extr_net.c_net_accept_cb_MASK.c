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
struct tcp_pcb {int keep_idle; int keep_cnt; int /*<<< orphan*/  so_options; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_6__ {scalar_t__ cb_accept_ref; int timeout; } ;
struct TYPE_7__ {scalar_t__ type; scalar_t__ self_ref; struct tcp_pcb* tcp_pcb; TYPE_1__ server; int /*<<< orphan*/  pcb; } ;
typedef  TYPE_2__ lnet_userdata ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_ABRT ; 
 int /*<<< orphan*/  ERR_OK ; 
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  SOF_KEEPALIVE ; 
 int /*<<< orphan*/  TYPE_TCP_CLIENT ; 
 scalar_t__ TYPE_TCP_SERVER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct tcp_pcb*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  net_err_cb ; 
 int /*<<< orphan*/  net_sent_cb ; 
 int /*<<< orphan*/  net_tcp_recv_cb ; 
 int /*<<< orphan*/  FUNC7 (struct tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC8 (struct tcp_pcb*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct tcp_pcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tcp_pcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct tcp_pcb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static err_t FUNC12(void *arg, struct tcp_pcb *newpcb, err_t err) {
  lnet_userdata *ud = (lnet_userdata*)arg;
  if (!ud || ud->type != TYPE_TCP_SERVER || !ud->pcb) return ERR_ABRT;
  if (ud->self_ref == LUA_NOREF || ud->server.cb_accept_ref == LUA_NOREF) return ERR_ABRT;

  lua_State *L = FUNC2();
  FUNC4(L, LUA_REGISTRYINDEX, ud->server.cb_accept_ref);

  lnet_userdata *nud = FUNC6(L, TYPE_TCP_CLIENT);
  FUNC3(L, 2);
  nud->self_ref = FUNC0(L, LUA_REGISTRYINDEX);
  nud->tcp_pcb = newpcb;
  FUNC8(nud->tcp_pcb, nud);
  FUNC9(nud->tcp_pcb, net_err_cb);
  FUNC10(nud->tcp_pcb, net_tcp_recv_cb);
  FUNC11(nud->tcp_pcb, net_sent_cb);
  nud->tcp_pcb->so_options |= SOF_KEEPALIVE;
  nud->tcp_pcb->keep_idle = ud->server.timeout * 1000;
  nud->tcp_pcb->keep_cnt = 1;
  FUNC7(ud->tcp_pcb);

  FUNC1(L, 1, 0);

  return FUNC5(nud, nud->tcp_pcb, ERR_OK);
}