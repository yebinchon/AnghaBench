#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t alloc_len; size_t len; int max_len; unsigned char* buffer; scalar_t__ secure; scalar_t__ attached; } ;
typedef  TYPE_1__ RAND_POOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,size_t) ; 
 unsigned char* FUNC2 (size_t) ; 
 unsigned char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  RAND_F_RAND_POOL_GROW ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char*,size_t) ; 

__attribute__((used)) static int FUNC6(RAND_POOL *pool, size_t len)
{
    if (len > pool->alloc_len - pool->len) {
        unsigned char *p;
        const size_t limit = pool->max_len / 2;
        size_t newlen = pool->alloc_len;

        if (pool->attached || len > pool->max_len - pool->len) {
            FUNC4(RAND_F_RAND_POOL_GROW, ERR_R_INTERNAL_ERROR);
            return 0;
        }

        do
            newlen = newlen < limit ? newlen * 2 : pool->max_len;
        while (len > newlen - pool->len);

        if (pool->secure)
            p = FUNC2(newlen);
        else
            p = FUNC3(newlen);
        if (p == NULL) {
            FUNC4(RAND_F_RAND_POOL_GROW, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        FUNC5(p, pool->buffer, pool->len);
        if (pool->secure)
            FUNC1(pool->buffer, pool->alloc_len);
        else
            FUNC0(pool->buffer, pool->alloc_len);
        pool->buffer = p;
        pool->alloc_len = newlen;
    }
    return 1;
}