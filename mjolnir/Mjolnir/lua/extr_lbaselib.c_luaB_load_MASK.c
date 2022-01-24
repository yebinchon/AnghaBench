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
 int /*<<< orphan*/  LUA_TFUNCTION ; 
 int /*<<< orphan*/  RESERVEDSLOT ; 
 int /*<<< orphan*/  generic_reader ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,size_t,char const*,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int,size_t*) ; 

__attribute__((used)) static int FUNC8 (lua_State *L) {
  int status;
  size_t l;
  const char *s = FUNC7(L, 1, &l);
  const char *mode = FUNC3(L, 3, "bt");
  int env = (!FUNC4(L, 4) ? 4 : 0);  /* 'env' index or 0 if no 'env' */
  if (s != NULL) {  /* loading a string? */
    const char *chunkname = FUNC3(L, 2, s);
    status = FUNC2(L, s, l, chunkname, mode);
  }
  else {  /* loading from a reader function */
    const char *chunkname = FUNC3(L, 2, "=(load)");
    FUNC1(L, 1, LUA_TFUNCTION);
    FUNC6(L, RESERVEDSLOT);  /* create reserved slot */
    status = FUNC5(L, generic_reader, NULL, chunkname, mode);
  }
  return FUNC0(L, status, env);
}