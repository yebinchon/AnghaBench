#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct vo {int want_redraw; TYPE_2__* priv; } ;
struct mp_image {int dummy; } ;
struct TYPE_8__ {TYPE_1__* vo; } ;
typedef  TYPE_2__ d3d_priv ;
struct TYPE_7__ {int want_redraw; } ;

/* Variables and functions */
#define  VOCTRL_REDRAW_FRAME 130 
#define  VOCTRL_SCREENSHOT_WIN 129 
#define  VOCTRL_SET_PANSCAN 128 
 int VO_EVENT_EXPOSE ; 
 int VO_EVENT_RESIZE ; 
 int VO_TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 struct mp_image* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct vo*,int) ; 
 int FUNC5 (struct vo*,int*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC6(struct vo *vo, uint32_t request, void *data)
{
    d3d_priv *priv = vo->priv;

    switch (request) {
    case VOCTRL_REDRAW_FRAME:
        FUNC1(priv);
        return VO_TRUE;
    case VOCTRL_SET_PANSCAN:
        FUNC0(priv);
        priv->vo->want_redraw = true;
        return VO_TRUE;
    case VOCTRL_SCREENSHOT_WIN:
        *(struct mp_image **)data = FUNC2(priv);
        return VO_TRUE;
    }

    int events = 0;
    int r = FUNC5(vo, &events, request, data);

    if (events & VO_EVENT_RESIZE)
        FUNC3(priv);

    if (events & VO_EVENT_EXPOSE)
        vo->want_redraw = true;

    FUNC4(vo, events);

    return r;
}