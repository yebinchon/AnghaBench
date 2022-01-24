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
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int FAILURE ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(const char * file, int egdsocket, int seeded) /* {{{ */
{
	char buffer[MAXPATHLEN];


	if (egdsocket || !seeded) {
		/* if we did not manage to read the seed file, we should not write
		 * a low-entropy seed file back */
		return FAILURE;
	}
	if (file == NULL) {
		file = FUNC1(buffer, sizeof(buffer));
	}
	FUNC0();
	if (file == NULL || !FUNC2(file)) {
		FUNC4();
		FUNC3(NULL, E_WARNING, "unable to write random state");
		return FAILURE;
	}
	return SUCCESS;
}