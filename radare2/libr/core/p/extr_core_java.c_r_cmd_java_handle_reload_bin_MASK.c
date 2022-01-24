#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  int ut64 ;
struct TYPE_9__ {int /*<<< orphan*/  io; TYPE_1__* file; } ;
struct TYPE_8__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_2__ RCore ;
typedef  int /*<<< orphan*/  RBinJavaObj ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
 scalar_t__ JAVA_CMDS ; 
 scalar_t__ RELOAD_BIN_IDX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 char* FUNC4 (char const*,char,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_2__*,char const*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13 (RCore *core, const char *cmd) {
	RAnal *anal = FUNC1 (core);
	RBinJavaObj *obj = (RBinJavaObj *) FUNC5 (anal);
	const char *p = cmd;
	ut64 addr = 0LL; //cur_offset = core->offset, addr = 0;
	ut64 buf_size = 0;
	ut8 * buf = NULL;
	int res = false;

	if (*cmd == ' ') {
		p = FUNC4 (p, ' ', -1);
	}
	if (!*cmd) {
		FUNC8 (JAVA_CMDS+RELOAD_BIN_IDX);
		return true;
	}

	addr = FUNC7(core, p) ? FUNC6 (core, p) : -1;
	if (*cmd == ' ') {
		p = FUNC4 (p, ' ', -1);
	}
	buf_size = FUNC7(core, p) ? FUNC6 (core, p) : -1;

	// XXX this may cause problems cause the file we are looking at may not be the bin we want.
	// lets pretend it is for now
	if (buf_size == 0) {
		res = FUNC12 (core->io, core->file->fd);
		buf_size = FUNC11 (core->io);
		buf = FUNC2 (buf_size);
		FUNC3 (buf, 0, buf_size);
		FUNC10 (core->io, addr, buf, buf_size);
	}
	if (buf && obj) {
		res = FUNC9 (core, obj, buf, buf_size);
	}
	FUNC0 (buf);
	return res;
}