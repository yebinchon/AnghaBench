#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vo_internal {int /*<<< orphan*/  lock; TYPE_1__* current_frame; } ;
struct vo {struct vo_internal* in; } ;
struct mp_image {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  current; } ;

/* Variables and functions */
 struct mp_image* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct mp_image *FUNC3(struct vo *vo)
{
    struct vo_internal *in = vo->in;
    FUNC1(&in->lock);
    struct mp_image *r = NULL;
    if (vo->in->current_frame)
        r = FUNC0(vo->in->current_frame->current);
    FUNC2(&in->lock);
    return r;
}