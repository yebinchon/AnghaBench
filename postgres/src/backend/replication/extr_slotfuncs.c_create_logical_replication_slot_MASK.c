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
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  LogicalDecodingContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MyReplicationSlot ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  RS_EPHEMERAL ; 
 int /*<<< orphan*/  RS_TEMPORARY ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  logical_read_local_xlog_page ; 

__attribute__((used)) static void
FUNC5(char *name, char *plugin,
								bool temporary, XLogRecPtr restart_lsn)
{
	LogicalDecodingContext *ctx = NULL;

	FUNC0(!MyReplicationSlot);

	/*
	 * Acquire a logical decoding slot, this will check for conflicting names.
	 * Initially create persistent slot as ephemeral - that allows us to
	 * nicely handle errors during initialization because it'll get dropped if
	 * this transaction fails. We'll make it persistent at the end. Temporary
	 * slots can be created as temporary from beginning as they get dropped on
	 * error as well.
	 */
	FUNC4(name, true,
						  temporary ? RS_TEMPORARY : RS_EPHEMERAL);

	/*
	 * Create logical decoding context, to build the initial snapshot.
	 */
	ctx = FUNC1(plugin, NIL,
									false,	/* do not build snapshot */
									restart_lsn,
									logical_read_local_xlog_page, NULL, NULL,
									NULL);

	/* build initial snapshot, might take a while */
	FUNC2(ctx);

	/* don't need the decoding context anymore */
	FUNC3(ctx);
}