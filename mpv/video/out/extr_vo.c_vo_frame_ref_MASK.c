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
struct vo_frame {int num_frames; int /*<<< orphan*/ ** frames; int /*<<< orphan*/ * current; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  destroy_frame ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 struct vo_frame* new ; 
 struct vo_frame* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vo_frame*,int /*<<< orphan*/ ) ; 

struct vo_frame *FUNC4(struct vo_frame *frame)
{
    if (!frame)
        return NULL;

    struct vo_frame *new = FUNC2(NULL, new);
    FUNC3(new, destroy_frame);
    *new = *frame;
    for (int n = 0; n < frame->num_frames; n++) {
        new->frames[n] = FUNC1(frame->frames[n]);
        if (!new->frames[n])
            FUNC0(); // OOM on tiny allocs
    }
    new->current = new->num_frames ? new->frames[0] : NULL;
    return new;
}