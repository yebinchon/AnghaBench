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
struct list_data {scalar_t__ format; } ;
typedef  int /*<<< orphan*/  obs_property_t ;

/* Variables and functions */
 scalar_t__ OBS_COMBO_FORMAT_INT ; 
 struct list_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct list_data*,size_t,char const*,long long*) ; 

void FUNC2(obs_property_t *p, size_t idx,
				  const char *name, long long val)
{
	struct list_data *data = FUNC0(p);
	if (data && data->format == OBS_COMBO_FORMAT_INT)
		FUNC1(data, idx, name, &val);
}