#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct script_ctx {TYPE_1__* mpctx; int /*<<< orphan*/  client; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {int /*<<< orphan*/  osd; } ;

/* Variables and functions */
 struct script_ctx* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char*) ; 

__attribute__((used)) static int FUNC5(lua_State *L)
{
    struct script_ctx *ctx = FUNC0(L);
    int res_x = FUNC1(L, 1);
    int res_y = FUNC1(L, 2);
    const char *text = FUNC2(L, 3);
    if (!text[0])
        text = " "; // force external OSD initialization
    FUNC4(ctx->mpctx->osd, ctx->client, res_x, res_y, (char *)text);
    FUNC3(ctx->mpctx);
    return 0;
}