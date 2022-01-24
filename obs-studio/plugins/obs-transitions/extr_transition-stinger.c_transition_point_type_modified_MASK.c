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
typedef  int /*<<< orphan*/  obs_property_t ;
typedef  int /*<<< orphan*/  obs_properties_t ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ TIMING_TIME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(obs_properties_t *ppts,
					   obs_property_t *p, obs_data_t *s)
{
	int64_t type = FUNC0(s, "tp_type");
	p = FUNC2(ppts, "transition_point");

	if (type == TIMING_TIME) {
		FUNC4(
			p, FUNC1("TransitionPoint"));
		FUNC3(p, " ms");
	} else {
		FUNC4(
			p, FUNC1("TransitionPointFrame"));
		FUNC3(p, "");
	}
	return true;
}