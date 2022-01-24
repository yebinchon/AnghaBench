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
typedef  int /*<<< orphan*/  libgdbr_t ;
typedef  int /*<<< orphan*/  command ;
struct TYPE_2__ {int valid; } ;

/* Variables and functions */
 char* CMD_WRITEREG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__ reg_cache ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int FUNC8 (char*,int,char*,char*,int) ; 

int FUNC9(libgdbr_t *g, int index, char *value, int len) {
	int ret = -1;
	char command[255] = { 0 };
	if (!g) {
		return -1;
	}
	if (!FUNC1 (g)) {
		goto end;
	}

	reg_cache.valid = false;
	ret = FUNC8 (command, sizeof (command) - 1, "%s%x=", CMD_WRITEREG, index);
	if (len + ret >= sizeof (command)) {
		FUNC0 ("command is too small\n");
		ret = -1;
		goto end;
	}
	FUNC4 (command + ret, value, len);
	FUNC5 (value, len, (command + ret));
	if (FUNC7 (g, command) < 0) {
		ret = -1;
		goto end;
	}
	if (FUNC6 (g, false) >= 0) {
		FUNC3 (g);
	}

	ret = 0;
end:
	FUNC2 (g);
	return ret;
}