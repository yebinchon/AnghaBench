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
struct TYPE_5__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  TMS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC5 (lua_State *L, const TValue *p1, const TValue *p2,
                         TMS event) {
  const TValue *tm1 = FUNC3(L, p1, event);
  const TValue *tm2;
  if (FUNC4(tm1)) return -1;  /* no metamethod? */
  tm2 = FUNC3(L, p2, event);
  if (!FUNC2(tm1, tm2))  /* different metamethods? */
    return -1;
  FUNC0(L, L->top, tm1, p1, p2);
  return !FUNC1(L->top);
}