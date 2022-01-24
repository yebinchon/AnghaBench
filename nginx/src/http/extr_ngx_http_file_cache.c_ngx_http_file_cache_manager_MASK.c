#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
typedef  scalar_t__ off_t ;
typedef  scalar_t__ ngx_uint_t ;
typedef  int ngx_msec_t ;
typedef  int /*<<< orphan*/  ngx_msec_int_t ;
typedef  int ngx_int_t ;
struct TYPE_9__ {scalar_t__ files; int manager_sleep; scalar_t__ max_size; scalar_t__ manager_files; int manager_threshold; scalar_t__ last; TYPE_2__* shpool; TYPE_1__* sh; } ;
typedef  TYPE_3__ ngx_http_file_cache_t ;
struct TYPE_10__ {int /*<<< orphan*/  log; } ;
struct TYPE_8__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_7__ {scalar_t__ size; scalar_t__ count; scalar_t__ watermark; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ngx_current_msec ; 
 TYPE_6__* ngx_cycle ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,int,int) ; 
 scalar_t__ ngx_quit ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ ngx_terminate ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static ngx_msec_t
FUNC7(void *data)
{
    ngx_http_file_cache_t  *cache = data;

    off_t       size;
    time_t      wait;
    ngx_msec_t  elapsed, next;
    ngx_uint_t  count, watermark;

    cache->last = ngx_current_msec;
    cache->files = 0;

    next = (ngx_msec_t) FUNC1(cache) * 1000;

    if (next == 0) {
        next = cache->manager_sleep;
        goto done;
    }

    for ( ;; ) {
        FUNC4(&cache->shpool->mutex);

        size = cache->sh->size;
        count = cache->sh->count;
        watermark = cache->sh->watermark;

        FUNC5(&cache->shpool->mutex);

        FUNC3(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                       "http file cache size: %O c:%ui w:%i",
                       size, count, (ngx_int_t) watermark);

        if (size < cache->max_size && count < watermark) {
            break;
        }

        wait = FUNC2(cache);

        if (wait > 0) {
            next = (ngx_msec_t) wait * 1000;
            break;
        }

        if (ngx_quit || ngx_terminate) {
            break;
        }

        if (++cache->files >= cache->manager_files) {
            next = cache->manager_sleep;
            break;
        }

        FUNC6();

        elapsed = FUNC0((ngx_msec_int_t) (ngx_current_msec - cache->last));

        if (elapsed >= cache->manager_threshold) {
            next = cache->manager_sleep;
            break;
        }
    }

done:

    elapsed = FUNC0((ngx_msec_int_t) (ngx_current_msec - cache->last));

    FUNC3(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                   "http file cache manager: %ui e:%M n:%M",
                   cache->files, elapsed, next);

    return next;
}