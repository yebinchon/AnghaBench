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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__* liolib_keys ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/ ** FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4 (lua_State *L, FILE *f, int k, const char *fname) {
  *FUNC3(L) = f;

  FUNC0(L, -1);
  FUNC1(L, LUA_REGISTRYINDEX, (int)(liolib_keys[k]));
  FUNC2(L, -2, fname);
}