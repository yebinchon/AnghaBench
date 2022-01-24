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
struct mp_cmd_ctx {int /*<<< orphan*/  on_osd; scalar_t__ msg_osd; struct MPContext* mpctx; } ;
struct MPContext {TYPE_1__* opts; } ;
struct TYPE_2__ {int osd_duration; double* ab_loop; } ;

/* Variables and functions */
 double MP_NOPTS_VALUE ; 
 int /*<<< orphan*/  M_PROPERTY_SET ; 
 int OSD_LEVEL_INVISIBLE ; 
 double FUNC0 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,double*,struct MPContext*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct MPContext*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;
    int osd_duration = mpctx->opts->osd_duration;
    int osdl = cmd->msg_osd ? 1 : OSD_LEVEL_INVISIBLE;

    double now = FUNC0(mpctx);
    if (mpctx->opts->ab_loop[0] == MP_NOPTS_VALUE) {
        FUNC1("ab-loop-a", M_PROPERTY_SET, &now, mpctx);
        FUNC3(mpctx, "ab-loop-a", cmd->on_osd);
    } else if (mpctx->opts->ab_loop[1] == MP_NOPTS_VALUE) {
        FUNC1("ab-loop-b", M_PROPERTY_SET, &now, mpctx);
        FUNC3(mpctx, "ab-loop-b", cmd->on_osd);
    } else {
        now = MP_NOPTS_VALUE;
        FUNC1("ab-loop-a", M_PROPERTY_SET, &now, mpctx);
        FUNC1("ab-loop-b", M_PROPERTY_SET, &now, mpctx);
        FUNC2(mpctx, osdl, osd_duration, "Clear A-B loop");
    }
}