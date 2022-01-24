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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC2(int error)
{
	if (error == 2)
		FUNC1(stderr,
				"%s", FUNC0("It contains a dot-prefixed/invisible file, perhaps due to it being a mount point.\n"));
	else if (error == 3)
		FUNC1(stderr,
				"%s", FUNC0("It contains a lost+found directory, perhaps due to it being a mount point.\n"));

	FUNC1(stderr,
			"%s", FUNC0("Using a mount point directly as the data directory is not recommended.\n"
			  "Create a subdirectory under the mount point.\n"));
}