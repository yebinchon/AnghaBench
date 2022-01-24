#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct triangulation_array {size_t count; int /*<<< orphan*/ * items; } ;
struct TYPE_2__ {int /*<<< orphan*/  items; } ;
struct triangulation {TYPE_1__ vertex_stack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct triangulation*,struct triangulation*,int) ; 

__attribute__((used)) static void FUNC3(struct triangulation_array *array, struct triangulation *item)
{
    FUNC1(FUNC0(), 0, item->vertex_stack.items);
    FUNC2(item, item + 1, (char*)&array->items[array->count] - (char*)(item + 1));
    array->count--;
}