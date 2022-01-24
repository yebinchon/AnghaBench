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
struct darray {size_t num; } ;
struct config_section {struct darray const items; int /*<<< orphan*/  name; } ;
typedef  struct config_item {int /*<<< orphan*/  name; } const config_item ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 void* FUNC1 (int,struct darray const*,size_t) ; 

__attribute__((used)) static const struct config_item *FUNC2(const struct darray *sections,
						  const char *section,
						  const char *name)
{
	size_t i, j;

	for (i = 0; i < sections->num; i++) {
		const struct config_section *sec =
			FUNC1(sizeof(struct config_section), sections, i);

		if (FUNC0(sec->name, section) == 0) {
			for (j = 0; j < sec->items.num; j++) {
				struct config_item *item =
					FUNC1(sizeof(struct config_item),
						    &sec->items, j);

				if (FUNC0(item->name, name) == 0)
					return item;
			}
		}
	}

	return NULL;
}