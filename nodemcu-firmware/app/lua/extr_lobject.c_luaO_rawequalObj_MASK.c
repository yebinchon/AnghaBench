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
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
#define  LUA_TBOOLEAN 133 
#define  LUA_TLIGHTFUNCTION 132 
#define  LUA_TLIGHTUSERDATA 131 
#define  LUA_TNIL 130 
#define  LUA_TNUMBER 129 
#define  LUA_TROTABLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int FUNC9 (int /*<<< orphan*/  const*) ; 

int FUNC10 (const TValue *t1, const TValue *t2) {
  if (FUNC9(t1) != FUNC9(t2)) return 0;
  else switch (FUNC9(t1)) {
    case LUA_TNIL:
      return 1;
    case LUA_TNUMBER:
      return FUNC5(FUNC6(t1), FUNC6(t2));
    case LUA_TBOOLEAN:
      return FUNC0(t1) == FUNC0(t2);  /* boolean true must be 1 !! */
    case LUA_TLIGHTUSERDATA:
      return FUNC7(t1) == FUNC7(t2);
    case LUA_TROTABLE:
      return FUNC8(t1) == FUNC8(t2);
    case LUA_TLIGHTFUNCTION:
      return FUNC1(t1) == FUNC1(t2);
    default:
      FUNC4(FUNC3(t1));
      return FUNC2(t1) == FUNC2(t2);
  }
}