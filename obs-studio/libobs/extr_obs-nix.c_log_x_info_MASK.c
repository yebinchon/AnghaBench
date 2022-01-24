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
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

__attribute__((used)) static void FUNC8(void)
{
	Display *dpy = FUNC5(NULL);
	if (!dpy) {
		FUNC6(LOG_INFO, "Unable to open X display");
		return;
	}

	int protocol_version = FUNC1(dpy);
	int protocol_revision = FUNC0(dpy);
	int vendor_release = FUNC3(dpy);
	const char *vendor_name = FUNC2(dpy);

	if (FUNC7(vendor_name, "X.Org")) {
		FUNC6(LOG_INFO,
		     "Window System: X%d.%d, Vendor: %s, Version: %d"
		     ".%d.%d",
		     protocol_version, protocol_revision, vendor_name,
		     vendor_release / 10000000, (vendor_release / 100000) % 100,
		     (vendor_release / 1000) % 100);
	} else {
		FUNC6(LOG_INFO,
		     "Window System: X%d.%d - vendor string: %s - "
		     "vendor release: %d",
		     protocol_version, protocol_revision, vendor_name,
		     vendor_release);
	}

	FUNC4(dpy);
}