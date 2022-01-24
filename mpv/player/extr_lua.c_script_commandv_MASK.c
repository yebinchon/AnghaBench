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
struct script_ctx {int /*<<< orphan*/  client; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (char const**) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct script_ctx* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const**) ; 

__attribute__((used)) static int FUNC7(lua_State *L)
{
    struct script_ctx *ctx = FUNC2(L);
    int num = FUNC4(L);
    const char *args[50];
    if (num + 1 > FUNC0(args))
        FUNC3(L, "too many arguments");
    for (int n = 1; n <= num; n++) {
        const char *s = FUNC5(L, n);
        if (!s)
            FUNC3(L, "argument %d is not a string", n);
        args[n - 1] = s;
    }
    args[num] = NULL;
    return FUNC1(L, FUNC6(ctx->client, args));
}