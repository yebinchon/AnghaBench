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

/* Variables and functions */
 int /*<<< orphan*/  OBS_COMBO_FORMAT_STRING ; 
 int /*<<< orphan*/  OBS_COMBO_TYPE_LIST ; 
 int /*<<< orphan*/  S_DIRECTION ; 
 int /*<<< orphan*/  S_SWIPE_IN ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static obs_properties_t *FUNC6(void *data)
{
	obs_properties_t *ppts = FUNC4();
	obs_property_t *p;

	p = FUNC3(ppts, S_DIRECTION,
				    FUNC1("Direction"),
				    OBS_COMBO_TYPE_LIST,
				    OBS_COMBO_FORMAT_STRING);
	FUNC5(p, FUNC1("Direction.Left"),
				     "left");
	FUNC5(p, FUNC1("Direction.Right"),
				     "right");
	FUNC5(p, FUNC1("Direction.Up"), "up");
	FUNC5(p, FUNC1("Direction.Down"),
				     "down");

	FUNC2(ppts, S_SWIPE_IN, FUNC1("SwipeIn"));

	FUNC0(data);
	return ppts;
}