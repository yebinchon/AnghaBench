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
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  relative_clicked ; 

__attribute__((used)) static obs_properties_t *FUNC6(void *data)
{
	obs_properties_t *props = FUNC4();

	obs_property_t *p = FUNC2(
		props, "relative", FUNC1("Crop.Relative"));

	FUNC5(p, relative_clicked);

	FUNC3(props, "left", FUNC1("Crop.Left"),
			       -8192, 8192, 1);
	FUNC3(props, "top", FUNC1("Crop.Top"), -8192,
			       8192, 1);
	FUNC3(props, "right", FUNC1("Crop.Right"),
			       -8192, 8192, 1);
	FUNC3(props, "bottom", FUNC1("Crop.Bottom"),
			       -8192, 8192, 1);
	FUNC3(props, "cx", FUNC1("Crop.Width"), 0,
			       8192, 1);
	FUNC3(props, "cy", FUNC1("Crop.Height"), 0,
			       8192, 1);

	FUNC0(data);
	return props;
}