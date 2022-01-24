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
struct float_data {double min; double max; double step; } ;
typedef  int /*<<< orphan*/  obs_property_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_PROPERTY_FLOAT ; 
 struct float_data* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC1(obs_property_t *p, double min, double max,
				   double step)
{
	struct float_data *data = FUNC0(p, OBS_PROPERTY_FLOAT);
	if (!data)
		return;

	data->min = min;
	data->max = max;
	data->step = step;
}