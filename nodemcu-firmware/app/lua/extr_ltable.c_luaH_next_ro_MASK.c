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
typedef  scalar_t__ StkId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

int FUNC2 (lua_State *L, void *t, StkId key) {
  FUNC0(L, t, key, key+1);
  return FUNC1(key) ? 0 : 1;
}