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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4 (lua_State *L, const char *s, const char *name) {
  int status = FUNC1(L, s, FUNC3(s), name) || FUNC0(L, 0, 1);
  return FUNC2(L, status);
}