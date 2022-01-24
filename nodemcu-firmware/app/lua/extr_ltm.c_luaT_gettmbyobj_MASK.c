#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_6__ {int /*<<< orphan*/ * tmname; int /*<<< orphan*/ ** mt; } ;
struct TYPE_5__ {int /*<<< orphan*/ * metatable; } ;
struct TYPE_4__ {int /*<<< orphan*/ * metatable; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  size_t TMS ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
#define  LUA_TROTABLE 130 
#define  LUA_TTABLE 129 
#define  LUA_TUSERDATA 128 
 TYPE_2__* FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* luaO_nilobject ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 size_t FUNC7 (int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/  const*) ; 

const TValue *FUNC9 (lua_State *L, const TValue *o, TMS event) {
  Table *mt;
  switch (FUNC7(o)) {
    case LUA_TTABLE:
      mt = FUNC1(o)->metatable;
      break;
    case LUA_TROTABLE:
      mt = (Table*)FUNC4(FUNC6(o));
      break;
    case LUA_TUSERDATA:
      mt = FUNC8(o)->metatable;
      break;
    default:
      mt = FUNC0(L)->mt[FUNC7(o)];
  }
  if (!mt)
    return luaO_nilobject;
  else if (FUNC5(mt))
    return FUNC3(mt, FUNC0(L)->tmname[event]);
  else
    return FUNC2(mt, FUNC0(L)->tmname[event]);
}