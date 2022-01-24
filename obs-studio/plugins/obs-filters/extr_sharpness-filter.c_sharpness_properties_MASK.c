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
typedef  int /*<<< orphan*/  obs_properties_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,double,double,double) ; 
 int /*<<< orphan*/ * FUNC3 () ; 

__attribute__((used)) static obs_properties_t *FUNC4(void *data)
{
	obs_properties_t *props = FUNC3();

	FUNC2(props, "sharpness",
					FUNC1("Sharpness"), 0.0, 1.0,
					0.01);

	FUNC0(data);
	return props;
}