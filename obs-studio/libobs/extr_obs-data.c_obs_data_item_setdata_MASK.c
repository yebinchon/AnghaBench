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
typedef  int /*<<< orphan*/  uint8_t ;
struct obs_data_item {size_t data_size; int type; size_t data_len; scalar_t__ autoselect_size; scalar_t__ default_len; scalar_t__ default_size; } ;
typedef  int ptrdiff_t ;
typedef  enum obs_data_type { ____Placeholder_obs_data_type } obs_data_type ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (struct obs_data_item*) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_data_item*) ; 
 int /*<<< orphan*/  FUNC3 (struct obs_data_item*) ; 
 int /*<<< orphan*/  FUNC4 (struct obs_data_item*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 struct obs_data_item* FUNC7 (struct obs_data_item*) ; 

__attribute__((used)) static inline void FUNC8(struct obs_data_item **p_item,
					 const void *data, size_t size,
					 enum obs_data_type type)
{
	if (!p_item || !*p_item)
		return;

	struct obs_data_item *item = *p_item;
	ptrdiff_t old_default_data_pos =
		(uint8_t *)FUNC1(item) - (uint8_t *)item;
	FUNC4(item);

	item->data_size = size;
	item->type = type;
	item->data_len = (item->default_size || item->autoselect_size)
				 ? FUNC0(size)
				 : size;
	item = FUNC7(item);

	if (item->default_size || item->autoselect_size)
		FUNC6(FUNC1(item),
			(uint8_t *)item + old_default_data_pos,
			item->default_len + item->autoselect_size);

	if (size) {
		FUNC5(FUNC2(item), data, size);
		FUNC3(item);
	}

	*p_item = item;
}