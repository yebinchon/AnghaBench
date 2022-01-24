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
struct vo {int want_redraw; struct priv* priv; } ;
struct priv {int /*<<< orphan*/  visible_surface; int /*<<< orphan*/  output_surface; } ;

/* Variables and functions */
#define  VOCTRL_REDRAW_FRAME 129 
#define  VOCTRL_SET_PANSCAN 128 
 int VO_EVENT_EXPOSE ; 
 int VO_EVENT_RESIZE ; 
 int VO_TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct vo*) ; 
 int /*<<< orphan*/  FUNC1 (struct priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct vo*,int) ; 
 int FUNC3 (struct vo*,int*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC4(struct vo *vo, uint32_t request, void *data)
{
    struct priv *p = vo->priv;

    switch (request) {
    case VOCTRL_REDRAW_FRAME:
        p->output_surface = p->visible_surface;
        FUNC0(vo);
        return true;
    case VOCTRL_SET_PANSCAN:
        FUNC1(p);
        return VO_TRUE;
    }

    int events = 0;
    int r = FUNC3(vo, &events, request, data);
    if (events & VO_EVENT_RESIZE)
        FUNC1(p);
    if (events & VO_EVENT_EXPOSE)
        vo->want_redraw = true;
    FUNC2(vo, events);
    return r;
}