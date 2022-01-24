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
struct vo_internal {int paused; int request_redraw; int /*<<< orphan*/  lock; scalar_t__ dropped_frame; } ;
struct vo {struct vo_internal* in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vo*) ; 
 int /*<<< orphan*/  FUNC3 (struct vo*) ; 
 int /*<<< orphan*/  FUNC4 (struct vo*) ; 

void FUNC5(struct vo *vo, bool paused)
{
    struct vo_internal *in = vo->in;
    FUNC0(&in->lock);
    if (in->paused != paused) {
        in->paused = paused;
        if (in->paused && in->dropped_frame) {
            in->request_redraw = true;
            FUNC3(vo);
        }
        FUNC2(vo);
        FUNC4(vo);
    }
    FUNC1(&in->lock);
}