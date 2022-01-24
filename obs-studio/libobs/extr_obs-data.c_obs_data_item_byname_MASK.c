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
struct obs_data_item {int /*<<< orphan*/  ref; } ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  struct obs_data_item obs_data_item_t ;

/* Variables and functions */
 struct obs_data_item* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

obs_data_item_t *FUNC2(obs_data_t *data, const char *name)
{
	if (!data)
		return NULL;

	struct obs_data_item *item = FUNC0(data, name);
	if (item)
		FUNC1(&item->ref);
	return item;
}