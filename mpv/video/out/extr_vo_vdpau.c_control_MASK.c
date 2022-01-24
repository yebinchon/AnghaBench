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
typedef  int /*<<< orphan*/  uint32_t ;
struct vo {int want_redraw; struct vdpctx* priv; } ;
struct vdpctx {int deint; } ;
struct mp_image {int dummy; } ;

/* Variables and functions */
#define  VOCTRL_GET_PREF_DEINT 132 
#define  VOCTRL_RESET 131 
#define  VOCTRL_SCREENSHOT_WIN 130 
#define  VOCTRL_SET_EQUALIZER 129 
#define  VOCTRL_SET_PANSCAN 128 
 int VO_EVENT_EXPOSE ; 
 int VO_EVENT_RESIZE ; 
 int VO_TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct vo*) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*) ; 
 int /*<<< orphan*/  FUNC2 (struct vo*,int) ; 
 struct mp_image* FUNC3 (struct vo*) ; 
 int /*<<< orphan*/  FUNC4 (struct vo*) ; 
 int /*<<< orphan*/  FUNC5 (struct vo*,int) ; 
 int FUNC6 (struct vo*,int*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC7(struct vo *vo, uint32_t request, void *data)
{
    struct vdpctx *vc = vo->priv;

    FUNC0(vo);

    switch (request) {
    case VOCTRL_SET_PANSCAN:
        FUNC1(vo);
        return VO_TRUE;
    case VOCTRL_SET_EQUALIZER:
        vo->want_redraw = true;
        return true;
    case VOCTRL_RESET:
        FUNC2(vo, true);
        return true;
    case VOCTRL_SCREENSHOT_WIN:
        if (!FUNC4(vo))
            return false;
        *(struct mp_image **)data = FUNC3(vo);
        return true;
    case VOCTRL_GET_PREF_DEINT:
        *(int *)data = vc->deint;
        return true;
    }

    int events = 0;
    int r = FUNC6(vo, &events, request, data);

    if (events & VO_EVENT_RESIZE) {
        FUNC1(vo);
    } else if (events & VO_EVENT_EXPOSE) {
        vo->want_redraw = true;
    }
    FUNC5(vo, events);

    return r;
}