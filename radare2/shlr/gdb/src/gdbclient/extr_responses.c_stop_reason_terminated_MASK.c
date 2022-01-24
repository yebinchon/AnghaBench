#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int pid; int tid; } ;
struct TYPE_9__ {int signum; int is_valid; TYPE_2__ thread; int /*<<< orphan*/  reason; } ;
struct TYPE_7__ {scalar_t__ multiprocess; } ;
struct TYPE_10__ {int pid; int data_len; TYPE_3__ stop_reason; int /*<<< orphan*/ * data; TYPE_1__ stub_features; } ;
typedef  TYPE_4__ libgdbr_t ;

/* Variables and functions */
 int /*<<< orphan*/  R_DEBUG_REASON_DEAD ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int*,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(libgdbr_t *g) {
	int signal = 0, pid = g->pid;
	g->stop_reason.reason = R_DEBUG_REASON_DEAD;
	if (g->stub_features.multiprocess && g->data_len > 3) {
		if (FUNC3 (g->data + 1, "%x;process:%x", &signal, &pid) != 2) {
			FUNC0 ("Message from remote: %s\n", *g->data);
			return -1;
		}
		FUNC0 ("Process %d terminated with signal %d\n", pid, signal);
		g->stop_reason.thread.pid = pid;
		g->stop_reason.thread.tid = pid;
		g->stop_reason.signum = signal;
		g->stop_reason.is_valid = true;
		return 0;
	}
	if (!FUNC2 (g->data[1])) {
		FUNC0 ("Message from remote: %s\n", *g->data);
		return -1;
	}
	signal = (int) FUNC4 (g->data + 1, NULL, 16);
	FUNC0 ("Process %d terminated with signal %d\n", g->pid, signal);
	g->stop_reason.thread.pid = pid;
	g->stop_reason.thread.tid = pid;
	g->stop_reason.signum = signal;
	g->stop_reason.is_valid = true;
	// Just to be sure, disconnect
	return FUNC1 (g);
}