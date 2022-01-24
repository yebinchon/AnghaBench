#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
struct TYPE_30__ {int data_len; char* data; int no_ack; scalar_t__ server_debug; } ;
typedef  TYPE_1__ libgdbr_t ;
typedef  int /*<<< orphan*/  gdbr_server_cmd_cb ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC13 (TYPE_1__*) ; 
 int FUNC14 (TYPE_1__*) ; 
 int FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC17 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC18 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC19 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC20 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC21 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC22 (TYPE_1__*) ; 
 int FUNC23 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC24 (char*,...) ; 
 scalar_t__ FUNC25 (char*,char*) ; 
 scalar_t__ FUNC26 (TYPE_1__*,int) ; 
 scalar_t__ FUNC27 (TYPE_1__*) ; 
 scalar_t__ FUNC28 (TYPE_1__*,char*) ; 

int FUNC29(libgdbr_t *g, gdbr_server_cmd_cb cmd_cb, void *core_ptr) {
	int ret;
	if (!g) {
		return -1;
	}
	while (1) {
		if (FUNC26 (g, false) < 0) {
			continue;
		}
		if (g->data_len == 0) {
			continue;
		}
		if (FUNC25 (g->data, "k")) {
			return FUNC7 (g, cmd_cb, core_ptr);
		}
		if (FUNC25 (g->data, "vKill")) {
			return FUNC21 (g, cmd_cb, core_ptr);
		}
		if (FUNC25 (g->data, "qSupported")) {
			if ((ret = FUNC13 (g)) < 0) {
				return ret;
			}
			continue;
		}
		if (FUNC25 (g->data, "qTStatus")) {
			if ((ret = FUNC14 (g)) < 0) {
				return ret;
			}
			continue;
		}
		if (FUNC25 (g->data, "qC") && g->data_len == 2) {
			if ((ret = FUNC11 (g, cmd_cb, core_ptr)) < 0) {
				return ret;
			}
			continue;
		}
		if (FUNC25 (g->data, "qAttached")) {
			if ((ret = FUNC10 (g, cmd_cb, core_ptr)) < 0) {
				return ret;
			}
			continue;
		}
		if (FUNC25 (g->data, "vMustReplyEmpty")) {
			if ((ret = FUNC22 (g)) < 0) {
				return ret;
			}
			continue;
		}
		if (FUNC25 (g->data, "qTfV")) {
			if ((ret = FUNC15 (g, cmd_cb, core_ptr)) < 0) {
				return ret;
			}
			continue;
		}
		if (FUNC25 (g->data, "qfThreadInfo")) {
			if ((ret = FUNC16 (g, cmd_cb, core_ptr)) < 0) {
				return ret;
			}
			continue;
		}
		if (FUNC25 (g->data, "qsThreadInfo")) {
			if ((ret = FUNC17 (g, cmd_cb, core_ptr)) < 0) {
				return ret;
			}
			continue;
		}
		if (FUNC25 (g->data, "Hg")) {
			if ((ret = FUNC1 (g, cmd_cb, core_ptr)) < 0) {
				return ret;
			}
			continue;
		}
		if (FUNC25 (g->data, "Hc")) {
			if ((ret = FUNC0 (g, cmd_cb, core_ptr)) < 0) {
				return ret;
			}
			continue;
		}
		if (FUNC25 (g->data, "?")) {
			if ((ret = FUNC18 (g, cmd_cb, core_ptr)) < 0) {
				return ret;
			}
			continue;
		}
		if (FUNC25 (g->data, "g") && g->data_len == 1) {
			if ((ret = FUNC6 (g, cmd_cb, core_ptr)) < 0) {
				return ret;
			}
			continue;
		}
		if (FUNC25 (g->data, "vCont")) {
			if ((ret = FUNC20 (g, cmd_cb, core_ptr)) < 0) {
				return ret;
			}
			continue;
		}
		if (FUNC25 (g->data, "qOffsets")) {
			if ((ret = FUNC12 (g, cmd_cb, core_ptr)) < 0) {
				return ret;
			}
			continue;
		}
		if (g->data[0] == 'z' || g->data[0] == 'Z') {
			if ((ret = FUNC23 (g, cmd_cb, core_ptr)) < 0) {
				return ret;
			}
			continue;
		}
		if (g->data[0] == 's') {
			if ((ret = FUNC19 (g, cmd_cb, core_ptr)) < 0) {
				return ret;
			}
			continue;
		}
		if (g->data[0] == 'c') {
			if ((ret = FUNC4 (g, cmd_cb, core_ptr)) < 0) {
				return ret;
			}
			continue;
		}
		if (FUNC25 (g->data, "m")) {
			if ((ret = FUNC8 (g, cmd_cb, core_ptr)) < 0) {
				return ret;
			}
			continue;
		}
		if (FUNC25 (g->data, "M")) {
			if ((ret = FUNC2 (g, cmd_cb, core_ptr)) < 0) {
				return ret;
			}
			continue;
		}
		if (FUNC25 (g->data, "P")) {
			if ((ret = FUNC3 (g, cmd_cb, core_ptr)) < 0) {
				return ret;
			}
			continue;
		}
		if (FUNC25 (g->data, "p")) {
			if ((ret = FUNC9 (g, cmd_cb, core_ptr)) < 0) {
				return ret;
			}
			continue;
		}
		if (FUNC25 (g->data, "qXfer:exec-file:read:")) {
			if ((ret = FUNC5 (g, cmd_cb, core_ptr)) < 0 ) {
				return ret;
			}
			continue;
		}
		if (FUNC25 (g->data, "QStartNoAckMode")) {
			if (FUNC27 (g) < 0) {
				return -1;
			}
			g->no_ack = true;
			if (g->server_debug) {
				FUNC24 ("[noack mode enabled]\n");
			}
			if (FUNC28 (g, "OK") < 0) {
				return -1;
			}
			continue;
		}
		// Unrecognized packet
		if (FUNC27 (g) < 0 || FUNC28 (g, "") < 0) {
			g->data[g->data_len] = '\0';
			FUNC24 ("Unknown packet: %s\n", g->data);
			return -1;
		}
	};
	return ret;
}