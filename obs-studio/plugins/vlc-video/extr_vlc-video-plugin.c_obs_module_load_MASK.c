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

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlc_source_info ; 

bool FUNC4(void)
{
	if (!FUNC1()) {
		FUNC0(LOG_INFO, "Couldn't find VLC installation, VLC video "
			       "source disabled");
		return true;
	}

	if (!FUNC2())
		return true;

	FUNC0(LOG_INFO, "VLC found, VLC video source enabled");

	FUNC3(&vlc_source_info);
	return true;
}