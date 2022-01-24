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
struct MPContext {TYPE_1__* opts; } ;
struct TYPE_2__ {int /*<<< orphan*/  lua_load_stats; int /*<<< orphan*/  lua_load_ytdl; int /*<<< orphan*/  lua_load_osc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,int /*<<< orphan*/ ,char*) ; 

void FUNC1(struct MPContext *mpctx)
{
    FUNC0(mpctx, mpctx->opts->lua_load_osc, "@osc.lua");
    FUNC0(mpctx, mpctx->opts->lua_load_ytdl, "@ytdl_hook.lua");
    FUNC0(mpctx, mpctx->opts->lua_load_stats, "@stats.lua");
}