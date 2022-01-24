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
struct mp_cmd_ctx {int success; int /*<<< orphan*/  on_osd; scalar_t__ msg_osd; struct MPContext* mpctx; } ;
struct MPOpts {int osd_duration; } ;
struct MPContext {struct MPOpts* opts; } ;

/* Variables and functions */
 int M_PROPERTY_OK ; 
 int M_PROPERTY_UNAVAILABLE ; 
 int M_PROPERTY_UNKNOWN ; 
 int OSD_LEVEL_INVISIBLE ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*,int,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mp_cmd_ctx *cmd, const char *name, int r)
{
    struct MPContext *mpctx = cmd->mpctx;
    struct MPOpts *opts = mpctx->opts;
    int osd_duration = opts->osd_duration;
    int osdl = cmd->msg_osd ? 1 : OSD_LEVEL_INVISIBLE;

    if (r == M_PROPERTY_OK || r == M_PROPERTY_UNAVAILABLE) {
        FUNC1(mpctx, name, cmd->on_osd);
        if (r == M_PROPERTY_UNAVAILABLE)
            cmd->success = false;
    } else if (r == M_PROPERTY_UNKNOWN) {
        FUNC0(mpctx, osdl, osd_duration, "Unknown property: '%s'", name);
        cmd->success = false;
    } else if (r <= 0) {
        FUNC0(mpctx, osdl, osd_duration, "Failed to set property '%s'",
                    name);
        cmd->success = false;
    }
}