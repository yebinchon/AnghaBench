#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int /*<<< orphan*/  base; } ;
struct TYPE_4__ {TYPE_1__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__ lua_methods ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  request_metatable_name ; 

lua_State *FUNC11(const char *script_file, const char *script)
{
    lua_State *L;

    L = FUNC4();
    if (FUNC0(!L))
        return NULL;

    FUNC5(L);

    FUNC3(L, request_metatable_name);
    FUNC6(L, NULL, lua_methods.base.base);
    FUNC8(L, -1, "__index");

    if (script_file) {
        if (FUNC0(FUNC1(L, script_file) != 0)) {
            FUNC10("Error opening Lua script %s: %s", script_file,
                              FUNC9(L, -1));
            goto close_lua_state;
        }
    } else if (script) {
        if (FUNC0(FUNC2(L, script) != 0)) {
            FUNC10("Error evaluating Lua script %s",
                              FUNC9(L, -1));
            goto close_lua_state;
        }
    } else {
        FUNC10("Either file or inline script has to be provided");
        goto close_lua_state;
    }

    return L;

close_lua_state:
    FUNC7(L);
    return NULL;
}