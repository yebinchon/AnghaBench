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
struct mp_input_src {TYPE_1__* in; } ;
struct TYPE_2__ {int init_done; int thread_running; int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(struct mp_input_src *src)
{
    FUNC0(!src->in->init_done);
    FUNC0(src->in->thread_running);
    FUNC0(FUNC2(src->in->thread, FUNC3()));
    src->in->init_done = true;
    FUNC1(&src->in->init_done, 0);
}