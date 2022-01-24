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
struct TYPE_9__ {char* data; TYPE_1__* registers; } ;
typedef  TYPE_2__ libgdbr_t ;
typedef  scalar_t__ (* gdbr_server_cmd_cb ) (TYPE_2__*,void*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;
struct TYPE_8__ {char* name; } ;

/* Variables and functions */
 char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,char*) ; 
 char* FUNC6 (char*,char) ; 
 int FUNC7 (char*) ; 
 int FUNC8 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(libgdbr_t *g, gdbr_server_cmd_cb cmd_cb, void *core_ptr) {
	char *ptr, *cmd;
	int regnum, len, i;
	if (FUNC3 (g) < 0) {
		return -1;
	}
	if (!FUNC2 (g->data[1]) || !(ptr = FUNC6 (g->data, '='))) {
		return FUNC4 (g, "E01");
	}
	ptr++;
	if (!FUNC2 (*ptr)) {
		return FUNC4 (g, "E01");
	}
	regnum = FUNC8 (g->data + 1, NULL, 16);
	// We need to do this because length of register set is not known
	for (i = 0; i < regnum; i++) {
		if (!*g->registers[i].name) {
			return FUNC4 (g, "E01");
		}
	}
	len = FUNC7 (g->registers[regnum].name) + FUNC7 (ptr) + 10;
	if (!(cmd = FUNC0 (len, sizeof (char)))) {
		return FUNC4 (g, "E01");
	}
	FUNC5 (cmd, len - 1, "dr %s=0x%s", g->registers[regnum].name, ptr);
	if (cmd_cb (g, core_ptr, cmd, NULL, 0) < 0) {
		FUNC1 (cmd);
		FUNC4 (g, "E01");
		return -1;
	}
	FUNC1 (cmd);
	return FUNC4 (g, "OK");
}