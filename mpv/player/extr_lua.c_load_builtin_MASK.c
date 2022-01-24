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
typedef  int /*<<< orphan*/  dispname ;

/* Variables and functions */
 char*** builtin_lua_scripts ; 
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(lua_State *L)
{
    const char *name = FUNC0(L, 1);
    char dispname[80];
    FUNC5(dispname, sizeof(dispname), "@%s", name);
    for (int n = 0; builtin_lua_scripts[n][0]; n++) {
        if (FUNC6(name, builtin_lua_scripts[n][0]) == 0) {
            const char *script = builtin_lua_scripts[n][1];
            if (FUNC2(L, script, FUNC7(script), dispname))
                FUNC4(L);
            FUNC3(L, 0, 1);
            return 1;
        }
    }
    FUNC1(L, "builtin module '%s' not found\n", name);
    return 0;
}