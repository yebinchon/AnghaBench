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
struct frame_rate_data {int dummy; } ;
typedef  int /*<<< orphan*/  obs_property_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_PROPERTY_FRAME_RATE ; 
 int /*<<< orphan*/  FUNC0 (struct frame_rate_data*) ; 
 struct frame_rate_data* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(obs_property_t *p)
{
	struct frame_rate_data *data =
		FUNC1(p, OBS_PROPERTY_FRAME_RATE);
	if (!data)
		return;

	FUNC0(data);
}