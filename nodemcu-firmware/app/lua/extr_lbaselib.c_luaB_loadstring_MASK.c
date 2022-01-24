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
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,size_t,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,char const*) ; 

__attribute__((used)) static int FUNC4 (lua_State *L) {
  size_t l;
  const char *s = FUNC1(L, 1, &l);
  const char *chunkname = FUNC3(L, 2, s);
  return FUNC0(L, FUNC2(L, s, l, chunkname));
}