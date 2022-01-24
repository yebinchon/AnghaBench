#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct track {struct mp_decoder_wrapper* dec; } ;
struct mp_decoder_wrapper {int dummy; } ;
struct m_property {int dummy; } ;
struct TYPE_4__ {double last_vo_pts; struct track*** current_track; } ;
typedef  TYPE_1__ MPContext ;

/* Variables and functions */
 int /*<<< orphan*/  MPSEEK_ABSOLUTE ; 
 int /*<<< orphan*/  MPSEEK_EXACT ; 
 double MP_NOPTS_VALUE ; 
 int /*<<< orphan*/  M_PROPERTY_GET ; 
 int M_PROPERTY_OK ; 
 int M_PROPERTY_SET ; 
 size_t STREAM_VIDEO ; 
 int /*<<< orphan*/  VDCTRL_REINIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_decoder_wrapper*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,struct m_property*,int,void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,double,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(void *ctx, struct m_property *prop,
                             int action, void *arg)
{
    MPContext *mpctx = ctx;
    struct track *track = mpctx->current_track[0][STREAM_VIDEO];
    struct mp_decoder_wrapper *dec = track ? track->dec : NULL;

    if (action == M_PROPERTY_SET) {
        char *new = *(char **)arg;
        char *old = NULL;
        if (FUNC3(mpctx, prop, M_PROPERTY_GET, &old) < 1)
            old = NULL;

        bool same = FUNC1(FUNC0(old), FUNC0(new));

        FUNC3(mpctx, prop, M_PROPERTY_SET, &new);

        FUNC5(old);

        if (!dec || same)
            return M_PROPERTY_OK;

        FUNC2(dec, VDCTRL_REINIT, NULL);
        double last_pts = mpctx->last_vo_pts;
        if (last_pts != MP_NOPTS_VALUE)
            FUNC4(mpctx, MPSEEK_ABSOLUTE, last_pts, MPSEEK_EXACT, 0);

        return M_PROPERTY_OK;
    }
    return FUNC3(mpctx, prop, action, arg);
}