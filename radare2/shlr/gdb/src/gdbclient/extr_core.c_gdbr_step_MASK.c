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

/* Variables and functions */
 char* CMD_C_STEP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 char* FUNC2 (char*,int) ; 
 int FUNC3 (TYPE_2__*,char*,char*) ; 
 scalar_t__ FUNC4 (char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC5(libgdbr_t *g, int tid) {
	int ret = -1;
	char thread_id[64] = { 0 };

	if (!FUNC0 (g)) {
		goto end;
	}

	if (tid <= 0 || FUNC4 (thread_id, sizeof (thread_id) - 1, g->pid, tid,
		    g->stub_features.multiprocess) < 0) {
		FUNC3 (g, "vCont?", NULL);
		FUNC3 (g, FUNC2 ("Hc%d", tid), NULL);
		ret = FUNC3 (g, CMD_C_STEP, NULL);
		goto end;
	}

	ret = FUNC3 (g, CMD_C_STEP, thread_id);
end:
	FUNC1 (g);
	return ret;
}