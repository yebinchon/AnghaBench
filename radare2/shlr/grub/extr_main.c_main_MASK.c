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
 scalar_t__ FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(int argc, char **argv) {
	if (argc>1) {
		FUNC2 ("grubfs api\n");
		return FUNC1 ();
	}
	FUNC2 ("grub internal api\n");
	if (FUNC0()) {
		FUNC2 ("\n** worked!\n");
	} else {
		FUNC2 ("\n** failed!\n");
	}
	return 0;
}