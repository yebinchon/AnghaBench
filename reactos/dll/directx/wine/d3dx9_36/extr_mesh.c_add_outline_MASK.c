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
struct outline_array {scalar_t__ count; struct outline* items; } ;
struct outline {int dummy; } ;
struct dynamic_array {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct outline*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dynamic_array*,scalar_t__,int) ; 

__attribute__((used)) static struct outline *FUNC2(struct outline_array *array)
{
    struct outline *item;

    if (!FUNC1((struct dynamic_array *)array, array->count + 1, sizeof(array->items[0])))
        return NULL;

    item = &array->items[array->count++];
    FUNC0(item, sizeof(*item));
    return item;
}