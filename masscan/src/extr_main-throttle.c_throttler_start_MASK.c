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
struct Throttler {double max_rate; int batch_size; TYPE_1__* buckets; } ;
struct TYPE_2__ {scalar_t__ packet_count; int /*<<< orphan*/  timestamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,double) ; 
 int /*<<< orphan*/  FUNC1 (struct Throttler*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(struct Throttler *throttler, double max_rate)
{
    unsigned i;

    FUNC1(throttler, 0, sizeof(*throttler));

    throttler->max_rate = max_rate;

    for (i=0; i<sizeof(throttler->buckets)/sizeof(throttler->buckets[0]); i++) {
        throttler->buckets[i].timestamp = FUNC2();
        throttler->buckets[i].packet_count = 0;
    }

    throttler->batch_size = 1;

    FUNC0(1, "maxrate = %0.2f\n", throttler->max_rate);
}