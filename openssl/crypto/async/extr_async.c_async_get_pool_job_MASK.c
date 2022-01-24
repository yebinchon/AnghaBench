#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ max_size; scalar_t__ curr_size; int /*<<< orphan*/  jobs; } ;
typedef  TYPE_1__ async_pool ;
struct TYPE_8__ {int /*<<< orphan*/  fibrectx; } ;
typedef  TYPE_2__ ASYNC_JOB ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/  poolkey ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ASYNC_JOB *FUNC6(void) {
    ASYNC_JOB *job;
    async_pool *pool;

    pool = (async_pool *)FUNC1(&poolkey);
    if (pool == NULL) {
        /*
         * Pool has not been initialised, so init with the defaults, i.e.
         * no max size and no pre-created jobs
         */
        if (FUNC0(0, 0) == 0)
            return NULL;
        pool = (async_pool *)FUNC1(&poolkey);
    }

    job = FUNC5(pool->jobs);
    if (job == NULL) {
        /* Pool is empty */
        if ((pool->max_size != 0) && (pool->curr_size >= pool->max_size))
            return NULL;

        job = FUNC4();
        if (job != NULL) {
            if (! FUNC2(&job->fibrectx)) {
                FUNC3(job);
                return NULL;
            }
            pool->curr_size++;
        }
    }
    return job;
}