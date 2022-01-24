#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  g; } ;
struct TYPE_13__ {TYPE_1__ lldb; } ;
struct TYPE_14__ {scalar_t__ remote_type; int /*<<< orphan*/  data; int /*<<< orphan*/  data_len; TYPE_2__ stub_features; int /*<<< orphan*/  gdbr_lock; } ;
typedef  TYPE_3__ libgdbr_t ;
struct TYPE_15__ {int valid; int /*<<< orphan*/  buflen; int /*<<< orphan*/  buf; scalar_t__ init; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_READREGS ; 
 scalar_t__ GDB_REMOTE_TYPE_LLDB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_3__*,int) ; 
 TYPE_5__ reg_cache ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 

int FUNC9(libgdbr_t *g) {
	int ret = -1;

	if (!g || !g->data) {
		return -1;
	}
	if (reg_cache.init && reg_cache.valid) {
		g->data_len = reg_cache.buflen;
		FUNC4 (g->data, reg_cache.buf, reg_cache.buflen);
		return 0;
	}
	// Don't wait on the lock in read_registers since it's frequently called, including
	// each time "enter" is pressed. Otherwise the user will be forced to interrupt exit
	// read_registers constantly while another task is in progress
	if (FUNC6 (g->gdbr_lock)) {
		return -1;
	}

	if (!FUNC0 (g)) {
		goto end;
	}
	if (g->remote_type == GDB_REMOTE_TYPE_LLDB && !g->stub_features.lldb.g) {
		ret = FUNC2 (g);
		goto end;
	}
	if ((ret = FUNC8 (g, CMD_READREGS)) < 0) {
		goto end;
	}
	if (FUNC7 (g, false) < 0 || FUNC3 (g) < 0) {
		ret = -1;
		goto end;
	}
	if (reg_cache.init) {
		reg_cache.buflen = g->data_len;
		FUNC5 (reg_cache.buf, 0, reg_cache.buflen);
		FUNC4 (reg_cache.buf, g->data, reg_cache.buflen);
		reg_cache.valid = true;
	}

	ret = 0;
end:
	FUNC1 (g);
	return ret;
}