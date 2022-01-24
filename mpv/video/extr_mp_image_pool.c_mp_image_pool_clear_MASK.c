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
struct mp_image_pool {int num_images; struct mp_image** images; } ;
struct mp_image {struct image_flags* priv; } ;
struct image_flags {int pool_alive; int referenced; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct mp_image*) ; 

void FUNC4(struct mp_image_pool *pool)
{
    for (int n = 0; n < pool->num_images; n++) {
        struct mp_image *img = pool->images[n];
        struct image_flags *it = img->priv;
        bool referenced;
        FUNC1();
        FUNC0(it->pool_alive);
        it->pool_alive = false;
        referenced = it->referenced;
        FUNC2();
        if (!referenced)
            FUNC3(img);
    }
    pool->num_images = 0;
}