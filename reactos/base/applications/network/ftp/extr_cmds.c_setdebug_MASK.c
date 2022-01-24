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
 int /*<<< orphan*/  SO_DEBUG ; 
 int FUNC0 (char const*) ; 
 int code ; 
 int debug ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 
 int /*<<< orphan*/  stdout ; 

void FUNC4(int argc, const char *argv[])
{
	int val;

	if (argc > 1) {
		val = FUNC0(argv[1]);
		if (val < 0) {
			FUNC3("%s: bad debugging value.\n", argv[1]);
			(void) FUNC1(stdout);
			code = -1;
			return;
		}
	} else
		val = !debug;
	debug = val;
	if (debug)
		options |= SO_DEBUG;
	else
		options &= ~SO_DEBUG;
	FUNC3("Debugging %s (debug=%d).\n", FUNC2(debug), debug);
	(void) FUNC1(stdout);
	code = debug > 0;
}