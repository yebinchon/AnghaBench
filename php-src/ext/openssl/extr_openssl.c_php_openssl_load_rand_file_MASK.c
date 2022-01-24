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
 scalar_t__ FUNC0 (char const*) ; 
 char* FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 scalar_t__ FUNC3 () ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(const char * file, int *egdsocket, int *seeded) /* {{{ */
{
	char buffer[MAXPATHLEN];

	*egdsocket = 0;
	*seeded = 0;

	if (file == NULL) {
		file = FUNC1(buffer, sizeof(buffer));
#ifdef HAVE_RAND_EGD
	} else if (RAND_egd(file) > 0) {
		/* if the given filename is an EGD socket, don't
		 * write anything back to it */
		*egdsocket = 1;
		return SUCCESS;
#endif
	}
	if (file == NULL || !FUNC2(file, -1)) {
		if (FUNC3() == 0) {
			FUNC5();
			FUNC4(NULL, E_WARNING, "unable to load random state; not enough random data!");
			return FAILURE;
		}
		return FAILURE;
	}
	*seeded = 1;
	return SUCCESS;
}