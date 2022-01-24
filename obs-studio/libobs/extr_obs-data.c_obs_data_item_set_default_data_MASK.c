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
struct obs_data_item {int type; size_t default_size; size_t default_len; size_t data_len; size_t data_size; scalar_t__ autoselect_size; } ;
typedef  enum obs_data_type { ____Placeholder_obs_data_type } obs_data_type ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 void* FUNC1 (struct obs_data_item*) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_data_item*) ; 
 int /*<<< orphan*/  FUNC3 (struct obs_data_item*) ; 
 int /*<<< orphan*/  FUNC4 (struct obs_data_item*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct obs_data_item*,void*,struct obs_data_item*,void*,scalar_t__) ; 
 struct obs_data_item* FUNC7 (struct obs_data_item*) ; 

__attribute__((used)) static inline void FUNC8(struct obs_data_item **p_item,
						  const void *data, size_t size,
						  enum obs_data_type type)
{
	if (!p_item || !*p_item)
		return;

	struct obs_data_item *item = *p_item;
	void *old_autoselect_data = FUNC1(item);
	FUNC4(item);

	item->type = type;
	item->default_size = size;
	item->default_len = item->autoselect_size ? FUNC0(size) : size;
	item->data_len = item->data_size ? FUNC0(item->data_size) : 0;
	item = FUNC7(item);

	if (item->autoselect_size)
		FUNC6(*p_item, old_autoselect_data, item,
			  FUNC1(item), item->autoselect_size);

	if (size) {
		FUNC5(FUNC2(item), data, size);
		FUNC3(item);
	}

	*p_item = item;
}