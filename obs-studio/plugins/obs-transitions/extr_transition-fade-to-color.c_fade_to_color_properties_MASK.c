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
 int /*<<< orphan*/  S_COLOR ; 
 int /*<<< orphan*/  S_COLOR_TEXT ; 
 int /*<<< orphan*/  S_SWITCH_POINT ; 
 int /*<<< orphan*/  S_SWITCH_POINT_TEXT ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static obs_properties_t *FUNC5(void *data)
{
	obs_properties_t *props = FUNC3();

	FUNC1(props, S_COLOR, S_COLOR_TEXT);
	obs_property_t *p = FUNC2(
		props, S_SWITCH_POINT, S_SWITCH_POINT_TEXT, 0, 100, 1);
	FUNC4(p, "%");

	FUNC0(data);
	return props;
}