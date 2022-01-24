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
struct vo_x11_state {int /*<<< orphan*/  pending_vo_events; int /*<<< orphan*/  winrc; } ;
struct vo {scalar_t__ dwidth; scalar_t__ dheight; struct vo_x11_state* x11; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VO_EVENT_RESIZE ; 

__attribute__((used)) static void FUNC2(struct vo *vo)
{
    struct vo_x11_state *x11 = vo->x11;

    if (FUNC1(x11->winrc) != vo->dwidth || FUNC0(x11->winrc) != vo->dheight) {
        vo->dwidth = FUNC1(x11->winrc);
        vo->dheight = FUNC0(x11->winrc);
        x11->pending_vo_events |= VO_EVENT_RESIZE;
    }
}