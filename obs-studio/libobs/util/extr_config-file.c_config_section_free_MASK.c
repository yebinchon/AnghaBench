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
struct TYPE_2__ {size_t num; struct config_item* array; } ;
struct config_section {int /*<<< orphan*/  name; TYPE_1__ items; } ;
struct config_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static inline void FUNC3(struct config_section *section)
{
	struct config_item *items = section->items.array;
	size_t i;

	for (i = 0; i < section->items.num; i++)
		FUNC1(items + i);

	FUNC2(&section->items);
	FUNC0(section->name);
}