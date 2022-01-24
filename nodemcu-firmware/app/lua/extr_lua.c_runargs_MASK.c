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
 int /*<<< orphan*/  LUA_GCSETMEMLIMIT ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5 (lua_State *L, char **argv, int n) {
  int i;
  for (i = 1; i < n; i++) {
    if (argv[i] == NULL) continue;
    FUNC3(argv[i][0] == '-');
    switch (argv[i][1]) {  /* option */
      case 'e': {
        const char *chunk = argv[i] + 2;
        if (*chunk == '\0') chunk = argv[++i];
        FUNC3(chunk != NULL);
        if (FUNC2(L, chunk, "=(command line)") != 0)
          return 1;
        break;
      }
      case 'm': {
        const char *limit = argv[i] + 2;
        int memlimit=0;
        if (*limit == '\0') limit = argv[++i];
        FUNC3(limit != NULL);
        memlimit = FUNC0(limit);
        FUNC4(L, LUA_GCSETMEMLIMIT, memlimit);
        break;
      }
      case 'l': {
        const char *filename = argv[i] + 2;
        if (*filename == '\0') filename = argv[++i];
        FUNC3(filename != NULL);
        if (FUNC1(L, filename))
          return 1;  /* stop if file fails */
        break;
      }
      default: break;
    }
  }
  return 0;
}