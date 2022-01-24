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
struct mp_cmd_ctx {int /*<<< orphan*/  on_osd; struct MPContext* mpctx; } ;
struct MPContext {TYPE_1__* opts; int /*<<< orphan*/  demuxer; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ab_loop; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_PROPERTY_SET ; 
 double FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,double*,struct MPContext*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;

    if (!mpctx->demuxer)
        return;

    double a = FUNC0(mpctx->demuxer,
                                             mpctx->opts->ab_loop[0], false);
    double b = FUNC0(mpctx->demuxer,
                                             mpctx->opts->ab_loop[1], true);

    FUNC1("ab-loop-a", M_PROPERTY_SET, &a, mpctx);
    FUNC1("ab-loop-b", M_PROPERTY_SET, &b, mpctx);

    // Happens to cover both properties.
    FUNC2(mpctx, "ab-loop-b", cmd->on_osd);
}