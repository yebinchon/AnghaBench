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
typedef  int uint32_t ;
struct vo {int want_redraw; struct priv* priv; } ;
struct priv {int reload_display; double display_fps; int /*<<< orphan*/  display_mutex; int /*<<< orphan*/  renderer_enabled; } ;
struct mp_image {int dummy; } ;

/* Variables and functions */
#define  VOCTRL_CHECK_EVENTS 133 
#define  VOCTRL_FULLSCREEN 132 
#define  VOCTRL_GET_DISPLAY_FPS 131 
#define  VOCTRL_REDRAW_FRAME 130 
#define  VOCTRL_SCREENSHOT_WIN 129 
#define  VOCTRL_SET_PANSCAN 128 
 int VO_NOTIMPL ; 
 int VO_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vo*) ; 
 int /*<<< orphan*/  FUNC3 (struct vo*) ; 
 int /*<<< orphan*/  FUNC4 (struct vo*) ; 
 struct mp_image* FUNC5 (struct vo*) ; 
 int /*<<< orphan*/  FUNC6 (struct vo*) ; 

__attribute__((used)) static int FUNC7(struct vo *vo, uint32_t request, void *data)
{
    struct priv *p = vo->priv;

    switch (request) {
    case VOCTRL_FULLSCREEN:
        if (p->renderer_enabled)
            FUNC4(vo);
        vo->want_redraw = true;
        return VO_TRUE;
    case VOCTRL_SET_PANSCAN:
        if (p->renderer_enabled)
            FUNC3(vo);
        vo->want_redraw = true;
        return VO_TRUE;
    case VOCTRL_REDRAW_FRAME:
        FUNC6(vo);
        return VO_TRUE;
    case VOCTRL_SCREENSHOT_WIN:
        *(struct mp_image **)data = FUNC5(vo);
        return VO_TRUE;
    case VOCTRL_CHECK_EVENTS: {
        FUNC0(&p->display_mutex);
        bool reload_required = p->reload_display;
        p->reload_display = false;
        FUNC1(&p->display_mutex);
        if (reload_required)
            FUNC2(vo);
        return VO_TRUE;
    }
    case VOCTRL_GET_DISPLAY_FPS:
        *(double *)data = p->display_fps;
        return VO_TRUE;
    }

    return VO_NOTIMPL;
}