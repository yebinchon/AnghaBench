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
struct obs_data_array {int ref; } ;
typedef  struct obs_data_array obs_data_array_t ;

/* Variables and functions */
 struct obs_data_array* FUNC0 (int) ; 

obs_data_array_t *FUNC1()
{
	struct obs_data_array *array = FUNC0(sizeof(struct obs_data_array));
	array->ref = 1;

	return array;
}