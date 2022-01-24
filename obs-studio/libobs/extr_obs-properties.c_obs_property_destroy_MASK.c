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
struct obs_property {scalar_t__ type; struct obs_property* long_desc; struct obs_property* desc; struct obs_property* name; } ;

/* Variables and functions */
 scalar_t__ OBS_PROPERTY_EDITABLE_LIST ; 
 scalar_t__ OBS_PROPERTY_FLOAT ; 
 scalar_t__ OBS_PROPERTY_FRAME_RATE ; 
 scalar_t__ OBS_PROPERTY_GROUP ; 
 scalar_t__ OBS_PROPERTY_INT ; 
 scalar_t__ OBS_PROPERTY_LIST ; 
 scalar_t__ OBS_PROPERTY_PATH ; 
 int /*<<< orphan*/  FUNC0 (struct obs_property*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct obs_property*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct obs_property *property)
{
	if (property->type == OBS_PROPERTY_LIST)
		FUNC7(FUNC4(property));
	else if (property->type == OBS_PROPERTY_PATH)
		FUNC8(FUNC4(property));
	else if (property->type == OBS_PROPERTY_EDITABLE_LIST)
		FUNC1(FUNC4(property));
	else if (property->type == OBS_PROPERTY_FRAME_RATE)
		FUNC3(FUNC4(property));
	else if (property->type == OBS_PROPERTY_GROUP)
		FUNC5(FUNC4(property));
	else if (property->type == OBS_PROPERTY_INT)
		FUNC6(FUNC4(property));
	else if (property->type == OBS_PROPERTY_FLOAT)
		FUNC2(FUNC4(property));

	FUNC0(property->name);
	FUNC0(property->desc);
	FUNC0(property->long_desc);
	FUNC0(property);
}