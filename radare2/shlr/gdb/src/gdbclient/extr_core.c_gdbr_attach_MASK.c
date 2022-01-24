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
struct TYPE_13__ {int extended_mode; } ;
struct TYPE_12__ {int is_valid; } ;
struct TYPE_14__ {TYPE_2__ stub_features; TYPE_1__ stop_reason; int /*<<< orphan*/  sock; } ;
typedef  TYPE_3__ libgdbr_t ;
struct TYPE_15__ {int valid; } ;

/* Variables and functions */
 char* CMD_ATTACH ; 
 char* FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int) ; 
 TYPE_5__ reg_cache ; 
 int FUNC7 (TYPE_3__*,char*) ; 
 int FUNC8 (char*,size_t,char*,char*,int) ; 
 int FUNC9 (char*) ; 

int FUNC10(libgdbr_t *g, int pid) {
	int ret = -1;
	char *cmd = NULL;
	size_t buffer_size;

	if (!g || !g->sock) {
		return -1;
	}

	if (!FUNC3 (g)) {
		goto end;
	}
	g->stop_reason.is_valid = false;
	reg_cache.valid = false;

	if (g->stub_features.extended_mode == -1) {
		FUNC2 (g);
	}

	if (!g->stub_features.extended_mode) {
		// vAttach needs extended mode to do anything.
		ret = -2;
		goto end;
	}

	buffer_size = FUNC9 (CMD_ATTACH) + (sizeof (int) * 2) + 1;
	cmd = FUNC0 (buffer_size, sizeof (char));
	if (!cmd) {
		ret = -1;
		goto end;
	}

	ret = FUNC8 (cmd, buffer_size, "%s%x", CMD_ATTACH, pid);
	if (ret < 0) {
		goto end;
	}

	ret = FUNC7 (g, cmd);
	if (ret < 0) {
		goto end;
	}

	if (FUNC6 (g, false) < 0) {
		ret = -1;
		goto end;
	}

	ret = FUNC5 (g);
end:
	if (cmd) {
		FUNC1 (cmd);
	}
	FUNC4 (g);
	return ret;
}