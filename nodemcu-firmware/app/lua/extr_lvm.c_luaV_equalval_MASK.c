#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_9__ {int /*<<< orphan*/  metatable; } ;
struct TYPE_8__ {int /*<<< orphan*/  metatable; } ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
#define  LUA_TBOOLEAN 135 
#define  LUA_TLIGHTFUNCTION 134 
#define  LUA_TLIGHTUSERDATA 133 
#define  LUA_TNIL 132 
#define  LUA_TNUMBER 131 
#define  LUA_TROTABLE 130 
#define  LUA_TTABLE 129 
#define  LUA_TUSERDATA 128 
 int /*<<< orphan*/  TM_EQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*) ; 
 int FUNC11 (int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/  const*) ; 

int FUNC13 (lua_State *L, const TValue *t1, const TValue *t2) {
  const TValue *tm;
  FUNC6(FUNC11(t1) == FUNC11(t2));
  switch (FUNC11(t1)) {
    case LUA_TNIL: return 1;
    case LUA_TNUMBER: return FUNC7(FUNC8(t1), FUNC8(t2));
    case LUA_TBOOLEAN: return FUNC0(t1) == FUNC0(t2);  /* true must be 1 !! */
    case LUA_TROTABLE:
      return FUNC10(t1) == FUNC10(t2);
    case LUA_TLIGHTUSERDATA:
    case LUA_TLIGHTFUNCTION:
      return FUNC9(t1) == FUNC9(t2);
    case LUA_TUSERDATA: {
      if (FUNC12(t1) == FUNC12(t2)) return 1;
      tm = FUNC3(L, FUNC12(t1)->metatable, FUNC12(t2)->metatable,
                         TM_EQ);
      break;  /* will try TM */
    }
    case LUA_TTABLE: {
      if (FUNC4(t1) == FUNC4(t2)) return 1;
      tm = FUNC3(L, FUNC4(t1)->metatable, FUNC4(t2)->metatable, TM_EQ);
      break;  /* will try TM */
    }
    default: return FUNC2(t1) == FUNC2(t2);
  }
  if (tm == NULL) return 0;  /* no TM? */
  FUNC1(L, L->top, tm, t1, t2);  /* call TM */
  return !FUNC5(L->top);
}