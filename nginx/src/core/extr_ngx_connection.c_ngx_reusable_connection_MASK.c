#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_uint_t ;
typedef  int /*<<< orphan*/  ngx_queue_t ;
struct TYPE_4__ {int /*<<< orphan*/  queue; scalar_t__ reusable; int /*<<< orphan*/  log; } ;
typedef  TYPE_1__ ngx_connection_t ;
struct TYPE_5__ {int /*<<< orphan*/  reusable_connections_n; int /*<<< orphan*/  reusable_connections_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_CORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_3__* ngx_cycle ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_stat_waiting ; 

void
FUNC4(ngx_connection_t *c, ngx_uint_t reusable)
{
    FUNC1(NGX_LOG_DEBUG_CORE, c->log, 0,
                   "reusable connection: %ui", reusable);

    if (c->reusable) {
        FUNC3(&c->queue);
        ngx_cycle->reusable_connections_n--;

#if (NGX_STAT_STUB)
        (void) ngx_atomic_fetch_add(ngx_stat_waiting, -1);
#endif
    }

    c->reusable = reusable;

    if (reusable) {
        /* need cast as ngx_cycle is volatile */

        FUNC2(
            (ngx_queue_t *) &ngx_cycle->reusable_connections_queue, &c->queue);
        ngx_cycle->reusable_connections_n++;

#if (NGX_STAT_STUB)
        (void) ngx_atomic_fetch_add(ngx_stat_waiting, 1);
#endif
    }
}