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
struct mp_refqueue {int /*<<< orphan*/  filter; int /*<<< orphan*/  out; } ;
struct mp_image {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mp_image*) ; 
 int /*<<< orphan*/  MP_FRAME_VIDEO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_refqueue*) ; 

void FUNC5(struct mp_refqueue *q, struct mp_image *mpi)
{
    if (mpi) {
        FUNC3(q->out, FUNC0(MP_FRAME_VIDEO, mpi));
    } else {
        FUNC1(q->filter, "failed to output frame\n");
        FUNC2(q->filter);
    }
    FUNC4(q);
}