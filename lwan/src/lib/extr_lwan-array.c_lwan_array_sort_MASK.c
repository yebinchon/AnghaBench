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
struct lwan_array {int /*<<< orphan*/  elements; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int (*) (void const*,void const*)) ; 

void FUNC2(struct lwan_array *a,
                     size_t element_size,
                     int (*cmp)(const void *a, const void *b))
{
    if (FUNC0(a->elements))
        FUNC1(a->base, a->elements, element_size, cmp);
}