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
struct obs_data_item {struct obs_data_item* next; } ;
struct obs_data {int /*<<< orphan*/  json; struct obs_data_item* first_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obs_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_data_item**) ; 

__attribute__((used)) static inline void FUNC3(struct obs_data *data)
{
	struct obs_data_item *item = data->first_item;

	while (item) {
		struct obs_data_item *next = item->next;
		FUNC2(&item);
		item = next;
	}

	/* NOTE: don't use bfree for json text, allocated by json */
	FUNC1(data->json);
	FUNC0(data);
}