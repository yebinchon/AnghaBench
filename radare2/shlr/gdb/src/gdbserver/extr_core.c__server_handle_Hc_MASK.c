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
struct TYPE_7__ {int data_len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ libgdbr_t ;
typedef  scalar_t__ (* gdbr_server_cmd_cb ) (TYPE_1__*,void*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC6(libgdbr_t *g, gdbr_server_cmd_cb cmd_cb, void *core_ptr) {
	// Usually this is only sent with Hc-1. Still. Set the threads for next operations
	char cmd[32];
	int tid;
	if (FUNC1 (g) < 0) {
		return -1;
	}
	if (g->data_len <= 2 || FUNC0 (g->data[2])) {
		return FUNC2 (g, "E01");
	}
	// Hc-1 = "all threads", Hc0 = "pick any thread"
	if (g->data[2] == '0' || !FUNC5 (g->data + 2, "-1", 2)) {
		return FUNC2 (g, "OK");
	}
	FUNC4 (g->data + 2, "%x", &tid);
	FUNC3 (cmd, sizeof (cmd) - 1, "dpt=%d", tid);
	// Set thread for future operations
	if (cmd_cb (g, core_ptr, cmd, NULL, 0) < 0) {
		FUNC2 (g, "E01");
		return -1;
	}
	return FUNC2 (g, "OK");
}