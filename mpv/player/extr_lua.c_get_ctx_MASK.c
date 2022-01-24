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
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (struct script_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct script_ctx* FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct script_ctx *FUNC4(lua_State *L)
{
    FUNC1(L, LUA_REGISTRYINDEX, "ctx");
    struct script_ctx *ctx = FUNC3(L, -1);
    FUNC2(L, 1);
    FUNC0(ctx);
    return ctx;
}