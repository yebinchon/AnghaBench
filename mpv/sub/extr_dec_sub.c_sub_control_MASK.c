#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dec_sub {double video_fps; int /*<<< orphan*/  lock; TYPE_2__* sd; } ;
typedef  enum sd_ctrl { ____Placeholder_sd_ctrl } sd_ctrl ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {int (* control ) (TYPE_2__*,int,double*) ;} ;

/* Variables and functions */
 int CONTROL_OK ; 
 int CONTROL_UNKNOWN ; 
#define  SD_CTRL_SET_VIDEO_DEF_FPS 129 
#define  SD_CTRL_SUB_STEP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 double FUNC2 (struct dec_sub*,double) ; 
 double FUNC3 (struct dec_sub*,double) ; 
 int FUNC4 (TYPE_2__*,int,double*) ; 
 int FUNC5 (TYPE_2__*,int,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct dec_sub*) ; 

int FUNC7(struct dec_sub *sub, enum sd_ctrl cmd, void *arg)
{
    int r = CONTROL_UNKNOWN;
    FUNC0(&sub->lock);
    switch (cmd) {
    case SD_CTRL_SET_VIDEO_DEF_FPS:
        sub->video_fps = *(double *)arg;
        FUNC6(sub);
        break;
    case SD_CTRL_SUB_STEP: {
        double *a = arg;
        double arg2[2] = {a[0], a[1]};
        arg2[0] = FUNC3(sub, arg2[0]);
        if (sub->sd->driver->control)
            r = sub->sd->driver->control(sub->sd, cmd, arg2);
        if (r == CONTROL_OK)
            a[0] = FUNC2(sub, arg2[0]);
        break;
    }
    default:
        if (sub->sd->driver->control)
            r = sub->sd->driver->control(sub->sd, cmd, arg);
    }
    FUNC1(&sub->lock);
    return r;
}