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
struct obs_data_item {scalar_t__ default_size; } ;

/* Variables and functions */
 void* FUNC0 (struct obs_data_item*) ; 

__attribute__((used)) static inline void *FUNC1(struct obs_data_item *item)
{
	return item->default_size ? FUNC0(item) : NULL;
}