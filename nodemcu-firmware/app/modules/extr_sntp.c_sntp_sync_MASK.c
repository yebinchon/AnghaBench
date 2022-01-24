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
struct netif {TYPE_1__* dhcp; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_7__ {scalar_t__ addr; } ;
typedef  TYPE_2__ ip_addr_t ;
struct TYPE_8__ {scalar_t__ pcb; void* list_ref; void* err_cb_ref; void* sync_cb_ref; } ;
struct TYPE_6__ {TYPE_2__ offered_ntp_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 char* FUNC2 (TYPE_2__) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ server_count ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 TYPE_3__* state ; 
 char* FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 

__attribute__((used)) static int FUNC20 (lua_State *L)
{
  FUNC14(L, 0);

  const char *errmsg = 0;
#define sync_err(x) do { errmsg = x; goto error; } while (0)

  if (state)
    return FUNC4 (L, "sync in progress");

  char *state_err;
  state_err = FUNC17(L);
  if (state_err) {
    sync_err(state_err);
  }

  if (!FUNC7 (L, 2))
  {
    FUNC12 (L, 2);
    state->sync_cb_ref = FUNC5 (L, LUA_REGISTRYINDEX);
  }

  if (!FUNC7 (L, 3))
  {
    FUNC12 (L, 3);
    state->err_cb_ref = FUNC5 (L, LUA_REGISTRYINDEX);
  }

  // use last server, unless new one specified
  if (!FUNC7 (L, 1))
  {
    server_count = 0;
    if (FUNC8(L, 1)) {
      // Save a reference to the table
      FUNC12(L, 1);
    } else {
      size_t l;
      const char *hostname = FUNC3(L, 1, &l);
      if (l>128 || hostname == NULL)
        sync_err("need <128 hostname");

      /* Construct a singleton table containing the one server */
      FUNC9(L);
      FUNC10(L, 1);
      FUNC11(L, hostname);
      FUNC13(L, -3);
    }
  } else if (server_count == 0) {
    FUNC9(L);
    struct netif *iface = (struct netif *)FUNC0(0x00);
    if (iface->dhcp && iface->dhcp->offered_ntp_addr.addr) {
		ip_addr_t ntp_addr = iface->dhcp->offered_ntp_addr;
        FUNC10(L, 1);
        FUNC11(L, FUNC2(ntp_addr));
        FUNC13(L, -3);
    } else {
      // default to ntp pool
      int i;
      for (i = 0; i < 4; i++) {
        FUNC10(L, i + 1);
        char buf[64];
        FUNC16(buf, "%d.nodemcu.pool.ntp.org", i);
        FUNC11(L, buf);
        FUNC13(L, -3);
      }
    }
  }

  FUNC6 (L, LUA_REGISTRYINDEX, state->list_ref);
  state->list_ref = FUNC5(L, LUA_REGISTRYINDEX);
  FUNC15(L);

  if (!FUNC7(L, 4)) {
    FUNC14(L, 1);
  }

  return 0;

error:
  if (state)
  {
    if (state->pcb)
      FUNC19 (state->pcb);
    FUNC1 (state);
    state = 0;
  }
  return FUNC4 (L, errmsg);
}