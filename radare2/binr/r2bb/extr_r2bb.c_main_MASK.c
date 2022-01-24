#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* cmd; } ;

/* Variables and functions */
 TYPE_1__* bbcmds ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

int FUNC3(int argc, char **argv) {
	int i;
	for (i = 0; bbcmds[i].cmd; i++) {
		if (!FUNC2 (bbcmds[i].cmd, argv[0])) {
			const char *arg = argc > 1? argv[1]: NULL;
			return FUNC1 (i, arg);
		}
	}
	if (argc > 1) {
		for (i = 0; bbcmds[i].cmd; i++) {
			if (!FUNC2 (bbcmds[i].cmd, argv[1])) {
				const char *arg = argc > 2? argv[2]: NULL;
				return FUNC1 (i, arg);
			}
		}
	}
	for (i = 0; bbcmds[i].cmd; i++) {
		FUNC0 ("%s\n", bbcmds[i].cmd);
	}
	return 1;
}