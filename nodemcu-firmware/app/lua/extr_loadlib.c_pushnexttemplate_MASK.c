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
 char const* LUA_PATHSEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 char* FUNC1 (char const*,char const) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static const char * FUNC3 (lua_State *L, const char *path) {
  const char *l;
  while (*path == *LUA_PATHSEP) path++;  /* skip separators */
  if (*path == '\0') return NULL;  /* no more templates */
  l = FUNC1(path, *LUA_PATHSEP);  /* find next separator */
  if (l == NULL) l = path + FUNC2(path);
  FUNC0(L, path, l - path);  /* template */
  return l;
}