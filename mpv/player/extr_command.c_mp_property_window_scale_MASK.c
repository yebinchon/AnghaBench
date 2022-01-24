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
struct vo {int dummy; } ;
struct mp_image_params {int dummy; } ;
struct m_property {int dummy; } ;
struct TYPE_4__ {struct vo* video_out; } ;
typedef  TYPE_1__ MPContext ;

/* Variables and functions */
#define  M_PROPERTY_GET 129 
 int M_PROPERTY_OK ; 
#define  M_PROPERTY_SET 128 
 int /*<<< orphan*/  VOCTRL_GET_UNFS_WINDOW_SIZE ; 
 int /*<<< orphan*/  VOCTRL_SET_UNFS_WINDOW_SIZE ; 
 struct mp_image_params FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_image_params*,int*,int*) ; 
 int FUNC2 (TYPE_1__*,struct m_property*,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct vo*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC4(void *ctx, struct m_property *prop,
                                    int action, void *arg)
{
    MPContext *mpctx = ctx;
    struct vo *vo = mpctx->video_out;
    if (!vo)
        goto generic;

    struct mp_image_params params = FUNC0(mpctx);
    int vid_w, vid_h;
    FUNC1(&params, &vid_w, &vid_h);
    if (vid_w < 1 || vid_h < 1)
        goto generic;

    switch (action) {
    case M_PROPERTY_SET: {
        double scale = *(double *)arg;
        int s[2] = {vid_w * scale, vid_h * scale};
        if (s[0] > 0 && s[1] > 0)
            FUNC3(vo, VOCTRL_SET_UNFS_WINDOW_SIZE, s);
        goto generic;
    }
    case M_PROPERTY_GET: {
        int s[2];
        if (FUNC3(vo, VOCTRL_GET_UNFS_WINDOW_SIZE, s) <= 0 ||
            s[0] < 1 || s[1] < 1)
            goto generic;
        double xs = (double)s[0] / vid_w;
        double ys = (double)s[1] / vid_h;
        *(double *)arg = (xs + ys) / 2;
        return M_PROPERTY_OK;
    }
    }
generic:
    return FUNC2(mpctx, prop, action, arg);
}