#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ top; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  TString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  luaH_getstr ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,char const*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__,scalar_t__,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC7 (scalar_t__) ; 

__attribute__((used)) static int FUNC8 (lua_State *L, const TValue *t, const char *k) {
  const TValue *slot;
  TString *str = FUNC1(L, k);
  if (FUNC2(L, t, str, slot, luaH_getstr)) {
    FUNC5(L, L->top, slot);
    FUNC0(L);
  }
  else {
    FUNC6(L, L->top, str);
    FUNC0(L);
    FUNC3(L, t, L->top - 1, L->top - 1, slot);
  }
  FUNC4(L);
  return FUNC7(L->top - 1);
}