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
typedef  int /*<<< orphan*/  lua_Number ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
#define  LUA_TNIL 130 
#define  LUA_TNUMBER 129 
#define  LUA_TSTRING 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  const* FUNC1 (void*,int) ; 
 int /*<<< orphan*/  const* FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* luaO_nilobject ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 

const TValue *FUNC8 (void *t, const TValue *key) {
  switch (FUNC7(key)) {
    case LUA_TNIL: return luaO_nilobject;
    case LUA_TSTRING: return FUNC2(t, FUNC6(key));
    case LUA_TNUMBER: {
      int k;
      lua_Number n = FUNC5(key);
      FUNC3(k, n);
      if (FUNC4(FUNC0(k), FUNC5(key))) /* index is int? */
        return FUNC1(t, k);  /* use specialized version */
      /* else go through */
    }
    default: {
      return luaO_nilobject;
    }
  }
}