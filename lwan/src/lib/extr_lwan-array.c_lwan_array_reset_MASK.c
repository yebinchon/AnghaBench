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
struct lwan_array {void* base; scalar_t__ elements; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

int FUNC2(struct lwan_array *a, void *inline_storage)
{
    if (FUNC0(!a))
        return -EINVAL;

    if (a->base != inline_storage)
        FUNC1(a->base);

    a->base = NULL;
    a->elements = 0;

    return 0;
}