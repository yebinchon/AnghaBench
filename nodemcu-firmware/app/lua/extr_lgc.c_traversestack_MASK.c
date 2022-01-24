#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ top; scalar_t__ stack_last; scalar_t__ stack; TYPE_2__* ci; TYPE_2__* base_ci; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  global_State ;
struct TYPE_8__ {scalar_t__ top; } ;
typedef  scalar_t__ StkId ;
typedef  TYPE_2__ CallInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6 (global_State *g, lua_State *l) {
  StkId o, lim;
  CallInfo *ci;
  FUNC4(g, FUNC1(l));
  lim = l->top;
  if(l->stack == NULL) return; /* no stack to traverse */
  for (ci = l->base_ci; ci <= l->ci; ci++) {
    FUNC3(ci->top <= l->stack_last);
    if (lim < ci->top) lim = ci->top;
  }
  for (o = l->stack; o < l->top; o++)
    FUNC4(g, o);
  for (; o <= lim; o++)
    FUNC5(o);
  if (!FUNC2(l)) /* if stack size is fixed, can't resize it. */
    FUNC0(l, lim);
}