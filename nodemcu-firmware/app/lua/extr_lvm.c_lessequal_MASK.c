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
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 int /*<<< orphan*/  TM_LE ; 
 int /*<<< orphan*/  TM_LT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC9 (lua_State *L, const TValue *l, const TValue *r) {
  int res;
  if (FUNC8(l) != FUNC8(r))
    return FUNC2(L, l, r);
  else if (FUNC6(l))
    return FUNC3(FUNC4(l), FUNC4(r));
  else if (FUNC7(l))
    return FUNC1(FUNC5(l), FUNC5(r)) <= 0;
  else if ((res = FUNC0(L, l, r, TM_LE)) != -1)  /* first try `le' */
    return res;
  else if ((res = FUNC0(L, r, l, TM_LT)) != -1)  /* else try `lt' */
    return !res;
  return FUNC2(L, l, r);
}