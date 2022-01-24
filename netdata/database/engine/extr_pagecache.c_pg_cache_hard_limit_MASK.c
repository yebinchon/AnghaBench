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
struct TYPE_2__ {scalar_t__ metric_API_producers; } ;
struct rrdengine_instance {unsigned long max_cache_pages; TYPE_1__ stats; } ;

/* Variables and functions */

unsigned long FUNC0(struct rrdengine_instance *ctx)
{
    /* it's twice the number of producers since we pin 2 pages per producer */
    return ctx->max_cache_pages + 2 * (unsigned long)ctx->stats.metric_API_producers;
}