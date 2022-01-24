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
typedef  int /*<<< orphan*/  uint32_t ;
struct voctrl_performance_data {int dummy; } ;
struct vo_frame {int dummy; } ;
struct vo {int want_redraw; struct gpu_priv* priv; } ;
struct gpu_priv {int events; TYPE_2__* ctx; int /*<<< orphan*/  renderer; } ;
struct TYPE_5__ {TYPE_1__* fns; } ;
struct TYPE_4__ {int (* control ) (TYPE_2__*,int*,int /*<<< orphan*/ ,void*) ;int /*<<< orphan*/  (* reconfig ) (TYPE_2__*) ;} ;

/* Variables and functions */
#define  VOCTRL_EXTERNAL_RESIZE 136 
#define  VOCTRL_LOAD_HWDEC_API 135 
#define  VOCTRL_PAUSE 134 
#define  VOCTRL_PERFORMANCE_DATA 133 
#define  VOCTRL_RESET 132 
#define  VOCTRL_SCREENSHOT 131 
#define  VOCTRL_SET_EQUALIZER 130 
#define  VOCTRL_SET_PANSCAN 129 
#define  VOCTRL_UPDATE_RENDER_OPTS 128 
 int VO_EVENT_AMBIENT_LIGHTING_CHANGED ; 
 int VO_EVENT_EXPOSE ; 
 int VO_EVENT_ICC_PROFILE_CHANGED ; 
 int VO_EVENT_RESIZE ; 
 int VO_TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct gpu_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct gpu_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct vo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct voctrl_performance_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct vo_frame*,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vo*) ; 
 int /*<<< orphan*/  FUNC8 (struct vo*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int FUNC10 (TYPE_2__*,int*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC11 (struct vo_frame*) ; 
 int /*<<< orphan*/  FUNC12 (struct vo*,int) ; 
 struct vo_frame* FUNC13 (struct vo*) ; 

__attribute__((used)) static int FUNC14(struct vo *vo, uint32_t request, void *data)
{
    struct gpu_priv *p = vo->priv;

    switch (request) {
    case VOCTRL_SET_PANSCAN:
        FUNC8(vo);
        return VO_TRUE;
    case VOCTRL_SET_EQUALIZER:
        vo->want_redraw = true;
        return VO_TRUE;
    case VOCTRL_SCREENSHOT: {
        struct vo_frame *frame = FUNC13(vo);
        if (frame)
            FUNC5(p->renderer, frame, data);
        FUNC11(frame);
        return true;
    }
    case VOCTRL_LOAD_HWDEC_API:
        FUNC7(vo);
        return true;
    case VOCTRL_UPDATE_RENDER_OPTS: {
        FUNC2(p->renderer, vo);
        FUNC1(p);
        vo->want_redraw = true;
        return true;
    }
    case VOCTRL_RESET:
        FUNC4(p->renderer);
        return true;
    case VOCTRL_PAUSE:
        if (FUNC6(p->renderer))
            vo->want_redraw = true;
        return true;
    case VOCTRL_PERFORMANCE_DATA:
        FUNC3(p->renderer, (struct voctrl_performance_data *)data);
        return true;
    case VOCTRL_EXTERNAL_RESIZE:
        p->ctx->fns->reconfig(p->ctx);
        FUNC8(vo);
        return true;
    }

    int events = 0;
    int r = p->ctx->fns->control(p->ctx, &events, request, data);
    if (events & VO_EVENT_ICC_PROFILE_CHANGED) {
        FUNC1(p);
        vo->want_redraw = true;
    }
    if (events & VO_EVENT_AMBIENT_LIGHTING_CHANGED) {
        FUNC0(p);
        vo->want_redraw = true;
    }
    events |= p->events;
    p->events = 0;
    if (events & VO_EVENT_RESIZE)
        FUNC8(vo);
    if (events & VO_EVENT_EXPOSE)
        vo->want_redraw = true;
    FUNC12(vo, events);

    return r;
}