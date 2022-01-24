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
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (char const*) ; 

int FUNC7 (const char * driverPath) {
	BOOL ret = FALSE;
	if (FUNC0 () == FALSE) {
		if (FUNC6 (driverPath)) {
			FUNC3 (FUNC4 ("r2k"),TRUE);
			FUNC2 (FUNC4 ("r2k"));
			FUNC5 ("Installing driver: %s\n", driverPath);
			if (FUNC1 (driverPath, FUNC4 ("r2k"), FUNC4 ("r2k"))) {
				FUNC3 (FUNC4 ("r2k"),FALSE);
				ret = FUNC0 ();
			}
		} else {
			FUNC5 ("Error initalizating driver, try r2k://pathtodriver\nEx: radare2.exe r2k://c:\\r2k.sys");
		}
	} else {
		FUNC5 ("Driver present [OK]\n");
		ret = TRUE;
	}
	return ret;
}