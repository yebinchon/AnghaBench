#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct pbuf {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_9__ {scalar_t__ cb_sent_ref; } ;
struct TYPE_10__ {scalar_t__ type; scalar_t__ self_ref; int /*<<< orphan*/  tcp_pcb; TYPE_1__ client; int /*<<< orphan*/ * udp_pcb; int /*<<< orphan*/  pcb; } ;
typedef  TYPE_2__ lnet_userdata ;
struct TYPE_11__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ ip_addr_t ;
typedef  scalar_t__ err_t ;

/* Variables and functions */
 scalar_t__ ERR_OK ; 
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  PBUF_RAM ; 
 int /*<<< orphan*/  PBUF_TRANSPORT ; 
 int /*<<< orphan*/  TCP_WRITE_FLAG_COPY ; 
 scalar_t__ TYPE_TCP_CLIENT ; 
 scalar_t__ TYPE_TCP_SERVER ; 
 scalar_t__ TYPE_UDP_SOCKET ; 
 int /*<<< orphan*/  FUNC0 (char const*,TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  net_udp_recv_cb ; 
 struct pbuf* FUNC13 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct pbuf*) ; 
 int /*<<< orphan*/  FUNC15 (struct pbuf*,char const*,size_t) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,char const*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,struct pbuf*,TYPE_3__*,scalar_t__) ; 

int FUNC22( lua_State *L ) {
  lnet_userdata *ud = FUNC12(L);
  if (!ud || ud->type == TYPE_TCP_SERVER)
    return FUNC3(L, "invalid user data");
  ip_addr_t addr;
  uint16_t port;
  const char *data;
  size_t datalen = 0;
  int stack = 2;
  if (ud->type == TYPE_UDP_SOCKET) {
    size_t dl = 0;
    port = FUNC1(L, stack++);
    if (port == 0) return FUNC3(L, "need port");
    const char *domain = FUNC2(L, stack++, &dl);
    if (!domain) return FUNC3(L, "need IP address");
    if (!FUNC0(domain, &addr)) return FUNC3(L, "invalid IP address");
  }
  data = FUNC2(L, stack++, &datalen);
  if (!data || datalen == 0) return FUNC3(L, "no data to send");
  if (FUNC7(L, stack) || FUNC8(L, stack)) {
    FUNC9(L, stack++);
    FUNC5(L, LUA_REGISTRYINDEX, ud->client.cb_sent_ref);
    ud->client.cb_sent_ref = FUNC4(L, LUA_REGISTRYINDEX);
  }
  if (ud->type == TYPE_UDP_SOCKET && !ud->pcb) {
    ud->udp_pcb = FUNC18();
    if (!ud->udp_pcb)
      return FUNC3(L, "cannot allocate PCB");
    FUNC19(ud->udp_pcb, net_udp_recv_cb, ud);
    ip_addr_t laddr = {0};
    err_t err = FUNC17(ud->udp_pcb, &laddr, 0);
    if (err != ERR_OK) {
      FUNC20(ud->udp_pcb);
      ud->udp_pcb = NULL;
      return FUNC11(L, err);
    }
    if (ud->self_ref == LUA_NOREF) {
      FUNC9(L, 1);
      ud->self_ref = FUNC4(L, LUA_REGISTRYINDEX);
    }
  }
  if (!ud->pcb || ud->self_ref == LUA_NOREF)
    return FUNC3(L, "not connected");
  err_t err;
  if (ud->type == TYPE_UDP_SOCKET) {
    struct pbuf *pb = FUNC13(PBUF_TRANSPORT, datalen, PBUF_RAM);
    if (!pb)
      return FUNC3(L, "cannot allocate message buffer");
    FUNC15(pb, data, datalen);
    err = FUNC21(ud->udp_pcb, pb, &addr, port);
    FUNC14(pb);
    if (ud->client.cb_sent_ref != LUA_NOREF) {
      FUNC10(L, LUA_REGISTRYINDEX, ud->client.cb_sent_ref);
      FUNC10(L, LUA_REGISTRYINDEX, ud->self_ref);
      FUNC6(L, 1, 0);
    }
  } else if (ud->type == TYPE_TCP_CLIENT) {
    err = FUNC16(ud->tcp_pcb, data, datalen, TCP_WRITE_FLAG_COPY);
  }
  return FUNC11(L, err);
}