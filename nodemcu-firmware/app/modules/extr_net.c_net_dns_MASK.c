#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_7__ {scalar_t__ cb_dns_ref; int /*<<< orphan*/  wait_dns; } ;
struct TYPE_8__ {scalar_t__ type; scalar_t__ self_ref; TYPE_1__ client; } ;
typedef  TYPE_2__ lnet_userdata ;
typedef  int /*<<< orphan*/  ip_addr_t ;
typedef  scalar_t__ err_t ;

/* Variables and functions */
 scalar_t__ ERR_INPROGRESS ; 
 scalar_t__ ERR_OK ; 
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ TYPE_TCP_SERVER ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (char const*,int /*<<< orphan*/ *,TYPE_2__*),TYPE_2__*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11( lua_State *L ) {
  lnet_userdata *ud = FUNC10(L);
  if (!ud || ud->type == TYPE_TCP_SERVER)
    return FUNC2(L, "invalid user data");
  size_t dl = 0;
  const char *domain = FUNC1(L, 2, &dl);
  if (!domain)
    return FUNC2(L, "no domain specified");
  if (FUNC5(L, 3) || FUNC6(L, 3)) {
    FUNC4(L, LUA_REGISTRYINDEX, ud->client.cb_dns_ref);
    FUNC7(L, 3);
    ud->client.cb_dns_ref = FUNC3(L, LUA_REGISTRYINDEX);
  }
  if (ud->client.cb_dns_ref == LUA_NOREF)
    return FUNC2(L, "no callback specified");
  ud->client.wait_dns ++;
  int unref = 0;
  if (ud->self_ref == LUA_NOREF) {
    unref = 1;
    FUNC7(L, 1);
    ud->self_ref = FUNC3(L, LUA_REGISTRYINDEX);
  }
  ip_addr_t addr;
  err_t err = FUNC0(domain, &addr, net_dns_cb, ud);
  if (err == ERR_OK) {
    FUNC9(domain, &addr, ud);
  } else if (err != ERR_INPROGRESS) {
    ud->client.wait_dns --;
    if (unref) {
      FUNC4(L, LUA_REGISTRYINDEX, ud->self_ref);
      ud->self_ref = LUA_NOREF;
    }
    return FUNC8(L, err);
  }
  return 0;
}