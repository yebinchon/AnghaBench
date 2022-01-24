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
struct mp_image_pool {int fmt; int w; int h; int /*<<< orphan*/  allocator_ctx; struct mp_image* (* allocator ) (int /*<<< orphan*/ ,int,int,int) ;} ;
struct mp_image {int dummy; } ;

/* Variables and functions */
 struct mp_image* FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_image_pool*,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_image_pool*) ; 
 struct mp_image* FUNC3 (struct mp_image_pool*,int,int,int) ; 
 struct mp_image* FUNC4 (int /*<<< orphan*/ ,int,int,int) ; 

struct mp_image *FUNC5(struct mp_image_pool *pool, int fmt,
                                   int w, int h)
{
    if (!pool)
        return FUNC0(fmt, w, h);
    struct mp_image *new = FUNC3(pool, fmt, w, h);
    if (!new) {
        if (fmt != pool->fmt || w != pool->w || h != pool->h)
            FUNC2(pool);
        pool->fmt = fmt;
        pool->w = w;
        pool->h = h;
        if (pool->allocator) {
            new = pool->allocator(pool->allocator_ctx, fmt, w, h);
        } else {
            new = FUNC0(fmt, w, h);
        }
        if (!new)
            return NULL;
        FUNC1(pool, new);
        new = FUNC3(pool, fmt, w, h);
    }
    return new;
}