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
struct mp_recorder_sink {int dummy; } ;
struct dec_sub {int /*<<< orphan*/  lock; struct mp_recorder_sink* recorder_sink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct dec_sub *sub, struct mp_recorder_sink *sink)
{
    FUNC0(&sub->lock);
    sub->recorder_sink = sink;
    FUNC1(&sub->lock);
}