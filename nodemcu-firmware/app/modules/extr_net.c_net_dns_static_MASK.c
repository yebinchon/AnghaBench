#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  ip_addr_t ;
typedef  scalar_t__ err_t ;

/* Variables and functions */
 scalar_t__ ERR_INPROGRESS ; 
 scalar_t__ ERR_OK ; 
 int LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int* FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (char const*,int /*<<< orphan*/ *,int*),int*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC10( lua_State* L ) {
  size_t dl;
  const char* domain = FUNC4(L, 1, &dl);
  if (!domain && dl > 128) {
    return FUNC5(L, "wrong domain");
  }

  FUNC3(L, 2);
  FUNC7(L, 2);  // copy argument (func) to the top of stack
  int cbref = FUNC6(L, LUA_REGISTRYINDEX);
  if (cbref == LUA_NOREF) {
    return FUNC5(L, "wrong callback");
  }
  int *cbref_ptr = FUNC0(1, sizeof(int));
  cbref_ptr[0] = cbref;
  ip_addr_t addr;
  err_t err = FUNC1(domain, &addr, net_dns_static_cb, cbref_ptr);
  if (err == ERR_OK) {
    FUNC9(domain, &addr, cbref_ptr);
    return 0;
  } else if (err == ERR_INPROGRESS) {
    return 0;
  } else {
    int e = FUNC8(L, err);
    FUNC2(cbref_ptr);
    return e;
  }
  return 0;
}