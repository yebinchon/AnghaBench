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
struct list_item {int /*<<< orphan*/  str; int /*<<< orphan*/  name; } ;
struct list_data {scalar_t__ format; } ;

/* Variables and functions */
 scalar_t__ OBS_COMBO_FORMAT_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct list_data *data,
				  struct list_item *item)
{
	FUNC0(item->name);
	if (data->format == OBS_COMBO_FORMAT_STRING)
		FUNC0(item->str);
}