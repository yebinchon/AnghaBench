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
typedef  int /*<<< orphan*/  ngx_slab_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,size_t) ; 
 void* FUNC1 (int /*<<< orphan*/ *,size_t) ; 

void *
FUNC2(ngx_slab_pool_t *pool, size_t size)
{
    void  *p;

    p = FUNC1(pool, size);
    if (p) {
        FUNC0(p, size);
    }

    return p;
}