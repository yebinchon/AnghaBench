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
 int /*<<< orphan*/  FUNC0 (struct script_ctx*,char*) ; 
 struct script_ctx* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(lua_State *L)
{
    struct script_ctx *ctx = FUNC1(L);
    FUNC0(ctx, "mp.suspend() is deprecated and does nothing.\n");
    return 0;
}