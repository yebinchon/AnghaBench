#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  RIODesc ;
typedef  int /*<<< orphan*/  RIO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ gs ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  r_io_plugin_winedbg ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,char*,int) ; 
 char* FUNC6 (char*,char const*) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static RIODesc *FUNC8(RIO *io, const char *pathname, int rw, int mode) {
	if (FUNC0 (io, pathname, 0)) {
		if (gs) {
			return NULL;
		}
		gs = FUNC4 (0);
		char *cmd = FUNC6 ("winedbg '%s'", pathname + 10);
		int res = FUNC5 (gs, cmd, 1000);
		FUNC2 (cmd);
		if (!res) {
			return NULL;
		}
		char *reply = FUNC7 (NULL);
		if (reply) {
			int rw = 7;
			FUNC2 (reply);
			FUNC1 ("Wine-dbg is ready to go!\n");
			return FUNC3 (io, &r_io_plugin_winedbg, pathname, rw, mode, gs);
		}
		FUNC1 ("Can't find the Wine-dbg prompt\n");
	}
	return NULL;
}