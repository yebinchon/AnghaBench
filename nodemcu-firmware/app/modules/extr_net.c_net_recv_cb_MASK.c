#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16_t ;
struct pbuf {struct pbuf* next; int /*<<< orphan*/  len; int /*<<< orphan*/  payload; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_6__ {scalar_t__ cb_receive_ref; } ;
struct TYPE_7__ {scalar_t__ type; scalar_t__ self_ref; TYPE_1__ client; } ;
typedef  TYPE_2__ lnet_userdata ;
struct TYPE_8__ {int /*<<< orphan*/  addr; } ;
typedef  TYPE_3__ ip_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IPSTR ; 
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ TYPE_UDP_SOCKET ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct pbuf*) ; 

__attribute__((used)) static void FUNC9(lnet_userdata *ud, struct pbuf *p, ip_addr_t *addr, u16_t port) {
  if (ud->client.cb_receive_ref == LUA_NOREF) {
    FUNC8(p);
    return;
  }

  int num_args = 2;
  char iptmp[16] = { 0, };
  if (ud->type == TYPE_UDP_SOCKET)
  {
    num_args += 2;
    FUNC1(iptmp, IPSTR, FUNC0(&addr->addr));
  }

  lua_State *L = FUNC3();
  struct pbuf *pp = p;
  while (pp)
  {
    FUNC7(L, LUA_REGISTRYINDEX, ud->client.cb_receive_ref);
    FUNC7(L, LUA_REGISTRYINDEX, ud->self_ref);
    FUNC5(L, pp->payload, pp->len);
    if (ud->type == TYPE_UDP_SOCKET) {
      FUNC4(L, port);
      FUNC6(L, iptmp);
    }
    FUNC2(L, num_args, 0);
    pp = pp->next;
  }
  FUNC8(p);
}