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
struct script_ctx {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int LUA_REGISTRYINDEX ; 
 scalar_t__ LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC0 (struct script_ctx*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct script_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char*** builtin_lua_scripts ; 
 int /*<<< orphan*/  error_handler ; 
 int /*<<< orphan*/  load_builtin ; 
 int /*<<< orphan*/  load_scripts ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct script_ctx*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC16 (int /*<<< orphan*/ *,int) ; 
 struct script_ctx* FUNC17 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(lua_State *L)
{
    struct script_ctx *ctx = FUNC17(L, -1);
    FUNC9(L, 1); // -

    FUNC3(L);

    // used by get_ctx()
    FUNC11(L, ctx); // ctx
    FUNC14(L, LUA_REGISTRYINDEX, "ctx"); // -

    FUNC1(ctx); // mp

    FUNC19(L, "mp"); // mp

    // "mp" is available by default, and no "require 'mp'" is needed
    FUNC13(L, -1); // mp mp
    FUNC15(L, "mp"); // mp

    FUNC12(L, ctx->name); // mp name
    FUNC14(L, -2, "script_name"); // mp

    // used by pushnode()
    FUNC7(L); // mp table
    FUNC13(L, -1); // mp table table
    FUNC14(L, LUA_REGISTRYINDEX, "UNKNOWN_TYPE"); // mp table
    FUNC14(L, -2, "UNKNOWN_TYPE"); // mp
    FUNC7(L); // mp table
    FUNC13(L, -1); // mp table table
    FUNC14(L, LUA_REGISTRYINDEX, "MAP"); // mp table
    FUNC14(L, -2, "MAP"); // mp
    FUNC7(L); // mp table
    FUNC13(L, -1); // mp table table
    FUNC14(L, LUA_REGISTRYINDEX, "ARRAY"); // mp table
    FUNC14(L, -2, "ARRAY"); // mp

    FUNC9(L, 1); // -

    FUNC2(FUNC6(L) == 0);

    // Add a preloader for each builtin Lua module
    FUNC5(L, "package"); // package
    FUNC2(FUNC18(L, -1) == LUA_TTABLE);
    FUNC4(L, -1, "preload"); // package preload
    FUNC2(FUNC18(L, -1) == LUA_TTABLE);
    for (int n = 0; builtin_lua_scripts[n][0]; n++) {
        FUNC10(L, load_builtin); // package preload load_builtin
        FUNC14(L, -2, builtin_lua_scripts[n][0]);
    }
    FUNC9(L, 2); // -

    FUNC2(FUNC6(L) == 0);

    FUNC20(L);
    FUNC2(FUNC6(L) == 0);

    // run this under an error handler that can do backtraces
    FUNC10(L, error_handler); // errf
    FUNC10(L, load_scripts); // errf fn
    if (FUNC8(L, 0, 0, -2)) { // errf [error]
        const char *e = FUNC16(L, -1);
        FUNC0(ctx, "Lua error: %s\n", e ? e : "(unknown)");
    }

    return 0;
}