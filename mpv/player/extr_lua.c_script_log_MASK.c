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
struct script_ctx {int /*<<< orphan*/  log; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct script_ctx* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,...) ; 

__attribute__((used)) static int FUNC10(lua_State *L)
{
    struct script_ctx *ctx = FUNC1(L);

    int msgl = FUNC0(L, 1);

    int last = FUNC5(L);
    FUNC4(L, "tostring"); // args... tostring
    for (int i = 2; i <= last; i++) {
        FUNC7(L, -1); // args... tostring tostring
        FUNC7(L, i); // args... tostring tostring args[i]
        FUNC3(L, 1, 1); // args... tostring str
        const char *s = FUNC8(L, -1);
        if (s == NULL)
            return FUNC2(L, "Invalid argument");
        FUNC9(ctx->log, msgl, "%s%s", s, i > 0 ? " " : "");
        FUNC6(L, 1);  // args... tostring
    }
    FUNC9(ctx->log, msgl, "\n");

    return 0;
}