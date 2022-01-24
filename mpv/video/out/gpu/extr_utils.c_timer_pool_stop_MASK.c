#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct timer_pool {int running; scalar_t__* samples; size_t sample_idx; scalar_t__ sum; scalar_t__ peak; scalar_t__ sample_count; int /*<<< orphan*/  timer; TYPE_2__* ra; } ;
struct TYPE_4__ {TYPE_1__* fns; } ;
struct TYPE_3__ {scalar_t__ (* timer_stop ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int VO_PERF_SAMPLE_COUNT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC4(struct timer_pool *pool)
{
    if (!pool)
        return;

    FUNC2(pool->running);
    uint64_t res = pool->ra->fns->timer_stop(pool->ra, pool->timer);
    pool->running = false;

    if (res) {
        // Input res into the buffer and grab the previous value
        uint64_t old = pool->samples[pool->sample_idx];
        pool->sample_count = FUNC1(pool->sample_count + 1, VO_PERF_SAMPLE_COUNT);
        pool->samples[pool->sample_idx++] = res;
        pool->sample_idx %= VO_PERF_SAMPLE_COUNT;
        pool->sum = pool->sum + res - old;

        // Update peak if necessary
        if (res >= pool->peak) {
            pool->peak = res;
        } else if (pool->peak == old) {
            // It's possible that the last peak was the value we just removed,
            // if so we need to scan for the new peak
            uint64_t peak = res;
            for (int i = 0; i < VO_PERF_SAMPLE_COUNT; i++)
                peak = FUNC0(peak, pool->samples[i]);
            pool->peak = peak;
        }
    }
}