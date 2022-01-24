#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {size_t len; int /*<<< orphan*/ * metatable; } ;
typedef  TYPE_1__ Udata ;
typedef  int /*<<< orphan*/  GCObject ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TUSERDATA ; 
 int MAX_SIZE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  luaO_nilobject ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 

Udata *FUNC5 (lua_State *L, size_t s) {
  Udata *u;
  GCObject *o;
  if (s > MAX_SIZE - sizeof(Udata))
    FUNC2(L);
  o = FUNC1(L, LUA_TUSERDATA, FUNC4(s));
  u = FUNC0(o);
  u->len = s;
  u->metatable = NULL;
  FUNC3(L, u, luaO_nilobject);
  return u;
}