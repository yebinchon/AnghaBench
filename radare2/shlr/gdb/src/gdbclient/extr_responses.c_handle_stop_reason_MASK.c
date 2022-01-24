#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_19__ {int present; int /*<<< orphan*/  tid; int /*<<< orphan*/  pid; } ;
struct TYPE_18__ {int present; int /*<<< orphan*/  tid; int /*<<< orphan*/  pid; } ;
struct TYPE_16__ {char* path; int present; } ;
struct TYPE_15__ {int present; int /*<<< orphan*/  addr; } ;
struct TYPE_14__ {int present; int /*<<< orphan*/  tid; int /*<<< orphan*/  pid; } ;
struct TYPE_13__ {int signum; int core; int is_valid; int vforkdone; int library; int swbreak; int hwbreak; int create; int /*<<< orphan*/  reason; TYPE_6__ vfork; TYPE_5__ fork; TYPE_3__ exec; TYPE_2__ watchpoint; TYPE_1__ thread; } ;
struct TYPE_17__ {int /*<<< orphan*/  multiprocess; } ;
struct TYPE_20__ {int data_len; int* data; TYPE_11__ stop_reason; TYPE_4__ stub_features; } ;
typedef  TYPE_7__ libgdbr_t ;
typedef  int /*<<< orphan*/  libgdbr_stop_reason_t ;

/* Variables and functions */
 int /*<<< orphan*/  R_DEBUG_REASON_BREAKPOINT ; 
 int /*<<< orphan*/  R_DEBUG_REASON_NONE ; 
 int /*<<< orphan*/  R_DEBUG_REASON_SIGNAL ; 
 char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_11__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 
 int FUNC8 (char*,char*,int*) ; 
 int FUNC9 (TYPE_7__*) ; 
 int FUNC10 (TYPE_7__*) ; 
 char* FUNC11 (char*,char) ; 
 int FUNC12 (char*) ; 
 char* FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*) ; 

int FUNC17(libgdbr_t *g) {
	FUNC7 (g);
	if (g->data_len < 3) {
		return -1;
	}
	switch (g->data[0]) {
	case 'O':
		FUNC16 (g->data + 1, g->data_len - 1, g->data + 1);
		//g->data[g->data_len - 1] = '\0';
		FUNC1 ("%s", g->data + 1);
		if (FUNC7 (g) < 0) {
			return -1;
		}
		FUNC4 (&g->stop_reason, 0, sizeof (libgdbr_stop_reason_t));
		g->stop_reason.signum = -1;
		g->stop_reason.reason = R_DEBUG_REASON_NONE;
		return 0;
	case 'W':
		return FUNC9 (g);
	case 'X':
		return FUNC10 (g);
	}
	if (g->data[0] != 'T') {
		return -1;
	}
	char *ptr1, *ptr2;
	g->data[g->data_len] = '\0';
	FUNC2 (g->stop_reason.exec.path);
	FUNC4 (&g->stop_reason, 0, sizeof (libgdbr_stop_reason_t));
	g->stop_reason.core = -1;
	if (FUNC8 (g->data + 1, "%02x", &g->stop_reason.signum) != 1) {
		return -1;
	}
	g->stop_reason.is_valid = true;
	g->stop_reason.reason = R_DEBUG_REASON_SIGNAL;
	for (ptr1 = FUNC13 (g->data + 3, ";"); ptr1; ptr1 = FUNC13 (NULL, ";")) {
		if (FUNC5 (ptr1, "thread") && !g->stop_reason.thread.present) {
			if (!(ptr2 = FUNC11 (ptr1, ':'))) {
				continue;
			}
			ptr2++;
			if (FUNC6 (ptr2, &g->stop_reason.thread.pid,
					    &g->stop_reason.thread.tid,
					    g->stub_features.multiprocess) < 0) {
				continue;
			}
			g->stop_reason.thread.present = true;
			continue;
		}
		if (FUNC5 (ptr1, "core")) {
			if (!(ptr2 = FUNC11 (ptr1, ':'))) {
				continue;
			}
			ptr2++;
			if (!FUNC3 (*ptr2)) {
				continue;
			}
			g->stop_reason.core = (int) FUNC14 (ptr2, NULL, 16);
			continue;
		}
		if (g->stop_reason.signum == 5) {
			if (FUNC5 (ptr1, "watch")
			    || FUNC5 (ptr1, "rwatch")
			    || FUNC5 (ptr1, "awatch")) {
				if (!(ptr2 = FUNC11 (ptr1, ':'))) {
					continue;
				}
				ptr2++;
				if (!FUNC3 (*ptr2)) {
					continue;
				}
				g->stop_reason.watchpoint.addr = FUNC15 (ptr2, NULL, 16);
				g->stop_reason.watchpoint.present = true;
				continue;
			}
			if (FUNC5 (ptr1, "exec") && !g->stop_reason.exec.present) {
				if (!(ptr2 = FUNC11 (ptr1, ':'))) {
					continue;
				}
				ptr2++;
				if (!(g->stop_reason.exec.path = FUNC0 (FUNC12 (ptr1) / 2, 1))) {
					continue;
				}
				FUNC16 (ptr2, FUNC12 (ptr2), g->stop_reason.exec.path);
				g->stop_reason.exec.present = true;
				continue;
			}
			if (FUNC5 (ptr1, "fork") && !g->stop_reason.fork.present) {
				if (!(ptr2 = FUNC11 (ptr1, ':'))) {
					continue;
				}
				ptr2++;
				if (FUNC6 (ptr2, &g->stop_reason.fork.pid,
						    &g->stop_reason.fork.tid,
						    g->stub_features.multiprocess) < 0) {
					continue;
				}
				g->stop_reason.fork.present = true;
				continue;
			}
			if (FUNC5 (ptr1, "vfork") && !g->stop_reason.vfork.present) {
				if (!(ptr2 = FUNC11 (ptr1, ':'))) {
					continue;
				}
				ptr2++;
				if (FUNC6 (ptr2, &g->stop_reason.vfork.pid,
						    &g->stop_reason.vfork.tid,
						    g->stub_features.multiprocess) < 0) {
					continue;
				}
				g->stop_reason.vfork.present = true;
				continue;
			}
			if (FUNC5 (ptr1, "vforkdone")) {
				g->stop_reason.vforkdone = true;
				continue;
			}
			if (FUNC5 (ptr1, "library")) {
				g->stop_reason.library = true;
				continue;
			}
			if (FUNC5 (ptr1, "swbreak")) {
				g->stop_reason.swbreak = true;
				continue;
			}
			if (FUNC5 (ptr1, "hwbreak")) {
				g->stop_reason.hwbreak = true;
				continue;
			}
			if (FUNC5 (ptr1, "create")) {
				g->stop_reason.create = true;
				continue;
			}
		}
	}
	if (g->stop_reason.signum == 5) {
		g->stop_reason.reason = R_DEBUG_REASON_BREAKPOINT;
	}
	return 0;
}