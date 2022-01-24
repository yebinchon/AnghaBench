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
typedef  int /*<<< orphan*/  procfile ;

/* Variables and functions */
 int /*<<< orphan*/  PROCFILE_FLAG_NO_ERROR_ON_FILE_IO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

unsigned long FUNC6(void) {
	static procfile *ff = NULL;

	ff = FUNC5(ff, "/proc/self/status", " \t:,-()/", PROCFILE_FLAG_NO_ERROR_ON_FILE_IO);
	if(!ff) {
		FUNC3(stderr, "Failed to open filename\n");
		FUNC2(1);
	}

	FUNC0();
	ff = FUNC4(ff);
	unsigned long c = FUNC1();

	if(!ff) {
		FUNC3(stderr, "Failed to read filename\n");
		FUNC2(1);
	}

	return c;
}