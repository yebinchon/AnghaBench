#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ autoselect_size; scalar_t__ default_len; scalar_t__ default_size; scalar_t__ data_len; scalar_t__ data_size; } ;
typedef  TYPE_1__ obs_data_item_t ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void*,TYPE_1__*,void*,scalar_t__) ; 

void FUNC3(obs_data_item_t *item)
{
	if (!item || !item->data_size)
		return;

	void *old_non_user_data = FUNC0(item);

	FUNC1(item);
	item->data_size = 0;
	item->data_len = 0;

	if (item->default_size || item->autoselect_size)
		FUNC2(item, old_non_user_data, item,
			  FUNC0(item),
			  item->default_len + item->autoselect_size);
}