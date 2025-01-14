
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct timer_pool {int running; scalar_t__* samples; size_t sample_idx; scalar_t__ sum; scalar_t__ peak; scalar_t__ sample_count; int timer; TYPE_2__* ra; } ;
struct TYPE_4__ {TYPE_1__* fns; } ;
struct TYPE_3__ {scalar_t__ (* timer_stop ) (TYPE_2__*,int ) ;} ;


 scalar_t__ MPMAX (scalar_t__,scalar_t__) ;
 scalar_t__ MPMIN (scalar_t__,int) ;
 int VO_PERF_SAMPLE_COUNT ;
 int assert (int) ;
 scalar_t__ stub1 (TYPE_2__*,int ) ;

void timer_pool_stop(struct timer_pool *pool)
{
    if (!pool)
        return;

    assert(pool->running);
    uint64_t res = pool->ra->fns->timer_stop(pool->ra, pool->timer);
    pool->running = 0;

    if (res) {

        uint64_t old = pool->samples[pool->sample_idx];
        pool->sample_count = MPMIN(pool->sample_count + 1, VO_PERF_SAMPLE_COUNT);
        pool->samples[pool->sample_idx++] = res;
        pool->sample_idx %= VO_PERF_SAMPLE_COUNT;
        pool->sum = pool->sum + res - old;


        if (res >= pool->peak) {
            pool->peak = res;
        } else if (pool->peak == old) {


            uint64_t peak = res;
            for (int i = 0; i < VO_PERF_SAMPLE_COUNT; i++)
                peak = MPMAX(peak, pool->samples[i]);
            pool->peak = peak;
        }
    }
}
