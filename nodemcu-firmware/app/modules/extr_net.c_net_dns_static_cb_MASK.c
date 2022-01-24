#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int addr; } ;
typedef  TYPE_1__ ip_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 char* IPSTR ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 size_t FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(const char *name, ip_addr_t *ipaddr, void *callback_arg) {
  ip_addr_t addr;
  if (ipaddr != NULL)
    addr = *ipaddr;
  else addr.addr = 0xFFFFFFFF;
  int cb_ref = ((int*)callback_arg)[0];
  FUNC1(callback_arg);
  lua_State *L = FUNC4();

  FUNC7(L, LUA_REGISTRYINDEX, cb_ref);
  FUNC6(L);
  if (addr.addr != 0xFFFFFFFF) {
    char iptmp[20];
    size_t ipl = FUNC8(iptmp, IPSTR, FUNC0(&addr.addr));
    FUNC5(L, iptmp, ipl);
  } else {
    FUNC6(L);
  }
  FUNC3(L, 2, 0);

  FUNC2(L, LUA_REGISTRYINDEX, cb_ref);
}