#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  thread_id ;
struct TYPE_7__ {int /*<<< orphan*/  multiprocess; } ;
struct TYPE_8__ {TYPE_1__ stub_features; int /*<<< orphan*/  pid; } ;
typedef  TYPE_2__ libgdbr_t ;
typedef  int /*<<< orphan*/  command ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_C_CONT ; 
 char* CMD_C_CONT_SIG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC6(libgdbr_t *g, int pid, int tid, int sig) {
	char thread_id[64] = { 0 };
	char command[16] = { 0 };
	int ret = -1;

	if (!FUNC0 (g)) {
		goto end;
	}

	if (sig <= 0) {
		FUNC4 (command, CMD_C_CONT, sizeof (command) - 1);
	} else {
		FUNC3 (command, sizeof (command) - 1, "%s%02x", CMD_C_CONT_SIG, sig);
	}
	if (tid <= 0 || FUNC5 (thread_id, sizeof (thread_id) - 1, g->pid, tid,
		    g->stub_features.multiprocess) < 0) {
		ret = FUNC2 (g, command, NULL);
		goto end;
	}

	ret = FUNC2 (g, command, thread_id);
end:
	FUNC1 (g);
	return ret;
}