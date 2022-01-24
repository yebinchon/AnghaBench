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
struct vo_internal {int request_redraw; int want_redraw; int /*<<< orphan*/  lock; } ;
struct vo {struct vo_internal* in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vo*) ; 

void FUNC3(struct vo *vo)
{
    struct vo_internal *in = vo->in;
    FUNC0(&in->lock);
    if (!in->request_redraw) {
        in->request_redraw = true;
        in->want_redraw = false;
        FUNC2(vo);
    }
    FUNC1(&in->lock);
}