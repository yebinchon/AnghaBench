#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {scalar_t__ wait_dns; } ;
struct TYPE_5__ {int type; int /*<<< orphan*/  self_ref; TYPE_1__ client; int /*<<< orphan*/ * pcb; int /*<<< orphan*/ * udp_pcb; int /*<<< orphan*/ * tcp_pcb; } ;
typedef  TYPE_2__ lnet_userdata ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  LUA_GCRESTART ; 
 int /*<<< orphan*/  LUA_GCSTOP ; 
 int /*<<< orphan*/  LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
#define  TYPE_TCP_CLIENT 130 
#define  TYPE_TCP_SERVER 129 
#define  TYPE_UDP_SOCKET 128 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8( lua_State *L ) {
  lnet_userdata *ud = FUNC3(L);
  if (!ud) return FUNC0(L, "invalid user data");
  if (ud->pcb) {
    switch (ud->type) {
      case TYPE_TCP_CLIENT:
        if (ERR_OK != FUNC6(ud->tcp_pcb)) {
          FUNC5(ud->tcp_pcb, NULL);
          FUNC4(ud->tcp_pcb);
        }
        ud->tcp_pcb = NULL;
        break;
      case TYPE_TCP_SERVER:
        FUNC6(ud->tcp_pcb);
        ud->tcp_pcb = NULL;
        break;
      case TYPE_UDP_SOCKET:
        FUNC7(ud->udp_pcb);
        ud->udp_pcb = NULL;
        break;
    }
  } else {
    return FUNC0(L, "not connected");
  }
  if (ud->type == TYPE_TCP_SERVER ||
     (ud->pcb == NULL && ud->client.wait_dns == 0)) {
    FUNC2(L, LUA_GCSTOP, 0);
    FUNC1(L, LUA_REGISTRYINDEX, ud->self_ref);
    ud->self_ref = LUA_NOREF;
    FUNC2(L, LUA_GCRESTART, 0);
  }
  return 0;
}