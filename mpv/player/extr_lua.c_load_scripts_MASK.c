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
struct script_ctx {char* filename; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 struct script_ctx* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC7(lua_State *L)
{
    struct script_ctx *ctx = FUNC0(L);
    const char *fname = ctx->filename;

    FUNC6(L, "mp.defaults");

    if (fname[0] == '@') {
        FUNC6(L, fname);
    } else {
        FUNC1(L, fname);
    }

    FUNC4(L, "mp_event_loop"); // fn
    if (FUNC5(L, -1))
        FUNC2(L, "no event loop function\n");
    FUNC3(L, 0, 0); // -

    return 0;
}