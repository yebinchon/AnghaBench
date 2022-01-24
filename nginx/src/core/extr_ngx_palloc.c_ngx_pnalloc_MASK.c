#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t max; } ;
typedef  TYPE_1__ ngx_pool_t ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*,size_t) ; 
 void* FUNC1 (TYPE_1__*,size_t,int /*<<< orphan*/ ) ; 

void *
FUNC2(ngx_pool_t *pool, size_t size)
{
#if !(NGX_DEBUG_PALLOC)
    if (size <= pool->max) {
        return FUNC1(pool, size, 0);
    }
#endif

    return FUNC0(pool, size);
}