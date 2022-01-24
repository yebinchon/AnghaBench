#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mp_cmd_ctx {int success; scalar_t__ seek_msg_osd; scalar_t__ seek_bar_osd; TYPE_3__* args; TYPE_1__* cmd; struct MPContext* mpctx; } ;
struct MPContext {int /*<<< orphan*/  add_osd_seek_info; int /*<<< orphan*/  playback_initialized; } ;
typedef  enum seek_precision { ____Placeholder_seek_precision } seek_precision ;
struct TYPE_5__ {double d; int i; } ;
struct TYPE_6__ {TYPE_2__ v; } ;
struct TYPE_4__ {double scale; } ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  MPSEEK_ABSOLUTE ; 
 int MPSEEK_DEFAULT ; 
 int MPSEEK_EXACT ; 
 int /*<<< orphan*/  MPSEEK_FACTOR ; 
 int /*<<< orphan*/  MPSEEK_FLAG_DELAY ; 
 int MPSEEK_KEYFRAME ; 
 int /*<<< orphan*/  MPSEEK_RELATIVE ; 
 int /*<<< orphan*/  OSD_FFW ; 
 int /*<<< orphan*/  OSD_REW ; 
 int /*<<< orphan*/  OSD_SEEK_INFO_BAR ; 
 int /*<<< orphan*/  OSD_SEEK_INFO_TEXT ; 
 double FUNC1 (struct MPContext*,int) ; 
 double FUNC2 (struct MPContext*) ; 
 double FUNC3 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC4 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC5 (struct MPContext*,int /*<<< orphan*/ ,double,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct MPContext*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;

    double v = cmd->args[0].v.d * cmd->cmd->scale;
    int abs = cmd->args[1].v.i & 3;
    enum seek_precision precision = MPSEEK_DEFAULT;
    switch (((cmd->args[2].v.i | cmd->args[1].v.i) >> 3) & 3) {
    case 1: precision = MPSEEK_KEYFRAME; break;
    case 2: precision = MPSEEK_EXACT; break;
    }
    if (!mpctx->playback_initialized) {
        cmd->success = false;
        return;
    }

    FUNC4(mpctx);
    switch (abs) {
    case 0: { // Relative seek
        FUNC5(mpctx, MPSEEK_RELATIVE, v, precision, MPSEEK_FLAG_DELAY);
        FUNC6(mpctx, (v > 0) ? OSD_FFW : OSD_REW);
        break;
    }
    case 1: { // Absolute seek by percentage
        double ratio = v / 100.0;
        double cur_pos = FUNC1(mpctx, false);
        FUNC5(mpctx, MPSEEK_FACTOR, ratio, precision, MPSEEK_FLAG_DELAY);
        FUNC6(mpctx, cur_pos < ratio ? OSD_FFW : OSD_REW);
        break;
    }
    case 2: { // Absolute seek to a timestamp in seconds
        if (v < 0) {
            // Seek from end
            double len = FUNC3(mpctx);
            if (len < 0) {
                cmd->success = false;
                return;
            }
            v = FUNC0(0, len + v);
        }
        FUNC5(mpctx, MPSEEK_ABSOLUTE, v, precision, MPSEEK_FLAG_DELAY);
        FUNC6(mpctx,
                         v > FUNC2(mpctx) ? OSD_FFW : OSD_REW);
        break;
    }
    case 3: { // Relative seek by percentage
        FUNC5(mpctx, MPSEEK_FACTOR,
                   FUNC1(mpctx, false) + v / 100.0,
                   precision, MPSEEK_FLAG_DELAY);
        FUNC6(mpctx, v > 0 ? OSD_FFW : OSD_REW);
        break;
    }}
    if (cmd->seek_bar_osd)
        mpctx->add_osd_seek_info |= OSD_SEEK_INFO_BAR;
    if (cmd->seek_msg_osd)
        mpctx->add_osd_seek_info |= OSD_SEEK_INFO_TEXT;
}