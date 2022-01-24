#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int peak_meter_type; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ obs_volmeter_t ;
typedef  enum obs_peak_meter_type { ____Placeholder_obs_peak_meter_type } obs_peak_meter_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(obs_volmeter_t *volmeter,
				      enum obs_peak_meter_type peak_meter_type)
{
	FUNC0(&volmeter->mutex);
	volmeter->peak_meter_type = peak_meter_type;
	FUNC1(&volmeter->mutex);
}