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
typedef  int /*<<< orphan*/  WindCtx ;
typedef  int /*<<< orphan*/  RIODesc ;
typedef  int /*<<< orphan*/  RIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 void* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  r_io_plugin_windbg ; 
 int /*<<< orphan*/ * FUNC5 (void*) ; 

__attribute__((used)) static RIODesc *FUNC6(RIO *io, const char *file, int rw, int mode) {
	if (!FUNC0 (io, file, 0)) {
		return NULL;
	}

	if (!FUNC3 ("pipe")) {
		FUNC1("Could not initialize the IO backend\n");
		return NULL;
	}

	void *io_ctx = FUNC2 (file + 9);
	if (!io_ctx) {
		FUNC1 ("Could not open the pipe\n");
		return NULL;
	}
	FUNC1 ("Opened pipe %s with fd %p\n", file + 9, io_ctx);

	WindCtx *ctx = FUNC5 (io_ctx);
	if (!ctx) {
		FUNC1 ("Failed to initialize windbg context\n");
		return NULL;
	}
	return FUNC4 (io, &r_io_plugin_windbg, file, rw, mode, ctx);
}