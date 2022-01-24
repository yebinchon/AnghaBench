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
typedef  int /*<<< orphan*/  RMain ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,char**) ; 

int FUNC3(int argc, char **argv) {
	int rc = 1;
	RMain *m = FUNC1 (argv[0]);
	if (m) {
		rc = FUNC2 (m, argc, argv);
		FUNC0 (m);
	}
	return rc;
}