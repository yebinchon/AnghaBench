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
struct device_list {int /*<<< orphan*/  items; } ;
struct device_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct device_item*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_item*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct device_list *list,
				   struct device_item *item)
{
	FUNC0(list->items, item);
	FUNC1(item, 0, sizeof(struct device_item));
}