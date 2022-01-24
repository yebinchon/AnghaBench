#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ top; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  TString ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC8(lua_State* L, TString *s) {
  if (!s)
    return NULL;
  FUNC4(L);
  FUNC7(L, L->top-1, s);
  FUNC5(L, -2);
  FUNC1(!FUNC2(L, -1));
  void *ts = FUNC0(FUNC6(L, -1));
  FUNC3(L, 1);
  return ts;
}