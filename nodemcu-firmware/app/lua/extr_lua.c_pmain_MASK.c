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
struct Smain {char** argv; int status; int argc; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_GCRESTART ; 
 int /*<<< orphan*/  LUA_GCSTOP ; 
 int FUNC0 (char**,int*,int*,int*) ; 
 int /*<<< orphan*/ * globalL ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* progname ; 
 int FUNC6 (int /*<<< orphan*/ *,char**,int) ; 

__attribute__((used)) static int FUNC7 (lua_State *L) {
  struct Smain *s = (struct Smain *)FUNC4(L, 1);
  char **argv = s->argv;
  int script;
  int has_i = 0, has_v = 0, has_e = 0;
  globalL = L;
  if (argv[0] && argv[0][0]) progname = argv[0];
  FUNC3(L, LUA_GCSTOP, 0);  /* stop collector during initialization */
  FUNC2(L);  /* open libraries */
  FUNC3(L, LUA_GCRESTART, 0);
  FUNC5(L);
  s->status = FUNC1(L);
  script = FUNC0(argv, &has_i, &has_v, &has_e);
  if (script < 0) {  /* invalid args? */
    s->status = 1;
    return 0;
  }
  s->status = FUNC6(L, argv, (script > 0) ? script : s->argc);
  if (s->status != 0) return 0;
  return 0;
}