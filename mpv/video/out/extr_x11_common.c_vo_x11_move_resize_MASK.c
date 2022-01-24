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
struct vo {TYPE_1__* x11; } ;
struct mp_rect {int /*<<< orphan*/  y0; int /*<<< orphan*/  x0; } ;
struct TYPE_5__ {int width; int height; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ XWindowChanges ;
struct TYPE_4__ {int /*<<< orphan*/  window; int /*<<< orphan*/  display; } ;

/* Variables and functions */
 unsigned int CWHeight ; 
 unsigned int CWWidth ; 
 unsigned int CWX ; 
 unsigned int CWY ; 
 int FUNC0 (struct mp_rect) ; 
 int FUNC1 (struct mp_rect) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct vo*,struct mp_rect,int) ; 

__attribute__((used)) static void FUNC4(struct vo *vo, bool move, bool resize,
                               struct mp_rect rc)
{
    if (!vo->x11->window)
        return;
    int w = FUNC1(rc), h = FUNC0(rc);
    XWindowChanges req = {.x = rc.x0, .y = rc.y0, .width = w, .height = h};
    unsigned mask = (move ? CWX | CWY : 0) | (resize ? CWWidth | CWHeight : 0);
    if (mask)
        FUNC2(vo->x11->display, vo->x11->window, mask, &req);
    FUNC3(vo, rc, false);
}