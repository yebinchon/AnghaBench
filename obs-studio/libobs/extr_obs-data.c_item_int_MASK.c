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
struct obs_data_number {scalar_t__ type; long long int_val; scalar_t__ double_val; } ;
struct obs_data_item {int dummy; } ;
typedef  struct obs_data_number* (* get_data_t ) (struct obs_data_item*) ;

/* Variables and functions */
 scalar_t__ OBS_DATA_NUM_INT ; 

__attribute__((used)) static inline long long FUNC0(struct obs_data_item *item,
				 get_data_t get_data)
{
	if (item && get_data(item)) {
		struct obs_data_number *num = get_data(item);
		return (num->type == OBS_DATA_NUM_INT)
			       ? num->int_val
			       : (long long)num->double_val;
	}

	return 0;
}