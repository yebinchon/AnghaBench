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
typedef  int /*<<< orphan*/  pa_proplist ;

/* Variables and functions */
 int /*<<< orphan*/  PA_PROP_APPLICATION_ICON_NAME ; 
 int /*<<< orphan*/  PA_PROP_APPLICATION_NAME ; 
 int /*<<< orphan*/  PA_PROP_MEDIA_ROLE ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static pa_proplist *FUNC2()
{
	pa_proplist *p = FUNC0();

	FUNC1(p, PA_PROP_APPLICATION_NAME, "OBS");
	FUNC1(p, PA_PROP_APPLICATION_ICON_NAME, "obs");
	FUNC1(p, PA_PROP_MEDIA_ROLE, "production");

	return p;
}