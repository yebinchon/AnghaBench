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
 scalar_t__ OBS_COMBO_FORMAT_STRING ; 
 size_t FUNC0 (struct list_data*,char const*,char const*) ; 
 struct list_data* FUNC1 (int /*<<< orphan*/ *) ; 

size_t FUNC2(obs_property_t *p, const char *name,
				    const char *val)
{
	struct list_data *data = FUNC1(p);
	if (data && data->format == OBS_COMBO_FORMAT_STRING)
		return FUNC0(data, name, val);
	return 0;
}