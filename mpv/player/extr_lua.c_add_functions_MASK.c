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
struct script_ctx {int /*<<< orphan*/ * state; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  main_fns ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  script_get_property ; 
 int /*<<< orphan*/  utils_fns ; 

__attribute__((used)) static void FUNC6(struct script_ctx *ctx)
{
    lua_State *L = ctx->state;

    FUNC5(L, "mp", main_fns);

    FUNC4(L, "mp"); // mp

    FUNC2(L, 0);
    FUNC1(L, script_get_property, 1);
    FUNC3(L, -2, "get_property");

    FUNC2(L, 1);
    FUNC1(L, script_get_property, 1);
    FUNC3(L, -2, "get_property_osd");

    FUNC0(L, 1); // -

    FUNC5(L, "mp.utils", utils_fns);
}