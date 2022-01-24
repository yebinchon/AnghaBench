#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* data; int pid; } ;
typedef  TYPE_1__ libgdbr_t ;
typedef  scalar_t__ (* gdbr_server_cmd_cb ) (TYPE_1__*,void*,char*,char*,size_t) ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 
 char* FUNC5 (char*,char) ; 
 int FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(libgdbr_t *g, gdbr_server_cmd_cb cb,
					 void *core_ptr) {
	char *buf, *ptr, cmd[64] = { 0 };
	size_t buflen = 512;
	int ret;
	if (FUNC2 (g) < 0) {
		return -1;
	}
	ptr = g->data + FUNC6 ("qXfer:exec-file:read:");
	if (*ptr != ':') {
		int pid;
		if ((pid = (int) FUNC7 (ptr, NULL, 16)) <= 0 || pid != g->pid) {
			return FUNC3 (g, "E00");
		}
	}
	if (!(ptr = FUNC5 (ptr, ':'))) {
		return FUNC3 (g, "E00");
	}
	ptr++;
	FUNC4 (cmd, sizeof (cmd) - 1, "if%s", ptr);
	if (!(buf = FUNC1 (buflen))) {
		FUNC3 (g, "E01");
		return -1;
	}
	if (cb (g, core_ptr, cmd, buf, buflen) < 0) {
		FUNC0 (buf);
		return FUNC3 (g, "E01");
	}
	ret = FUNC3 (g, buf);
	FUNC0 (buf);
	return ret;
}