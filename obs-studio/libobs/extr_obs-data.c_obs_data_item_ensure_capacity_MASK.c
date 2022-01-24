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
struct obs_data_item {size_t capacity; } ;

/* Variables and functions */
 struct obs_data_item* FUNC0 (struct obs_data_item*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_data_item*,struct obs_data_item*) ; 
 size_t FUNC2 (struct obs_data_item*) ; 

__attribute__((used)) static struct obs_data_item *
FUNC3(struct obs_data_item *item)
{
	size_t new_size = FUNC2(item);
	struct obs_data_item *new_item;

	if (item->capacity >= new_size)
		return item;

	new_item = FUNC0(item, new_size);
	new_item->capacity = new_size;

	FUNC1(item, new_item);
	return new_item;
}