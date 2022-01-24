#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int va; scalar_t__ debug; } ;
struct TYPE_10__ {scalar_t__ i_value; } ;
struct TYPE_9__ {TYPE_2__* bin; scalar_t__ dbg; TYPE_1__* file; TYPE_5__* io; int /*<<< orphan*/  config; } ;
struct TYPE_8__ {int is_debugger; } ;
struct TYPE_7__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_3__ RCore ;
typedef  TYPE_4__ RConfigNode ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 

__attribute__((used)) static bool FUNC7(void *user, void *data) {
	RCore *core = (RCore*) user;
	RConfigNode *node = (RConfigNode*) data;
	if (!core) {
		return false;
	}
	if (core->io) {
		core->io->va = !node->i_value;
		core->io->debug = node->i_value;
	}
	if (core->dbg && node->i_value) {
		const char *dbgbackend = FUNC0 (core->config, "dbg.backend");
		core->bin->is_debugger = true;
		FUNC3 (core->dbg, dbgbackend);
		if (!FUNC6 (FUNC0 (core->config, "cmd.prompt"), "")) {
			FUNC1 (core->config, "cmd.prompt", ".dr*");
		}
		if (!FUNC6 (dbgbackend, "bf")) {
			FUNC1 (core->config, "asm.arch", "bf");
		}
		if (core->file) {
			FUNC2 (core->dbg, FUNC4 (core->io, core->file->fd),
					FUNC5 (core->io, core->file->fd));
		}
	} else {
		FUNC3 (core->dbg, NULL);
		core->bin->is_debugger = false;
	}
	return true;
}