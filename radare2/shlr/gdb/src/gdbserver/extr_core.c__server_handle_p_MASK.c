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
typedef  int /*<<< orphan*/  message ;
struct TYPE_9__ {TYPE_1__* registers; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ libgdbr_t ;
typedef  scalar_t__ (* gdbr_server_cmd_cb ) (TYPE_2__*,void*,char*,char*,int) ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_8__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC3 (char*,int,char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(libgdbr_t *g, gdbr_server_cmd_cb cmd_cb, void *core_ptr) {
	char message[128] = { 0 }, cmd[128] = { 0 };
	int regnum, i;
	if (FUNC1 (g) < 0) {
		return -1;
	}
	if (!FUNC0 (g->data[1])) {
		return FUNC2 (g, "E01");
	}
	regnum = FUNC4 (g->data + 1, NULL, 16);
	// We need to do this because length of register set is not known
	for (i = 0; i < regnum; i++) {
		if (!*g->registers[i].name) {
			return FUNC2 (g, "E01");
		}
	}
	if (FUNC3 (cmd, sizeof (cmd) - 1, "dr %s", g->registers[regnum].name) < 0) {
		FUNC2 (g, "E01");
		return -1;
	}
	if (cmd_cb (g, core_ptr, cmd, message, sizeof (message)) < 0) {
		FUNC2 (g, "E01");
		return -1;
	}
	return FUNC2 (g, message);
}