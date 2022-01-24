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
typedef  int /*<<< orphan*/  RRegex ;

/* Variables and functions */
 int /*<<< orphan*/  R_REGEX_NOSUB ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4() {
	RRegex rx;
	int rc = FUNC1 (&rx, "^hi", R_REGEX_NOSUB);	
	if (rc) {
		FUNC0 ("error\n");

	} else {
		rc = FUNC2 (&rx, "patata", 0, 0, 0);
		FUNC0 ("out = %d\n", rc);

		rc = FUNC2 (&rx, "hillow", 0, 0, 0);
		FUNC0 ("out = %d\n", rc);
	}
	FUNC3 (&rx);
	return 0;
}