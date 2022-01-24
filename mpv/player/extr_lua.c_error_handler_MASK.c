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
struct script_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct script_ctx*,char*,char const*) ; 
 struct script_ctx* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(lua_State *L)
{
    struct script_ctx *ctx = FUNC1(L);

    if (FUNC2(L, "return debug.traceback('', 3)") == 0) { // e fn|err
        FUNC3(L, 0, 1); // e backtrace
        const char *tr = FUNC5(L, -1);
        FUNC0(ctx, "%s\n", tr ? tr : "(unknown)");
    }
    FUNC4(L, 1); // e

    return 1;
}