#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ status; scalar_t__ asyncStatus; int singleRowMode; int /*<<< orphan*/  errorMessage; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 scalar_t__ CONNECTION_OK ; 
 scalar_t__ PGASYNC_IDLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC4(PGconn *conn)
{
	if (!conn)
		return false;

	/* clear the error string */
	FUNC3(&conn->errorMessage);

	/* Don't try to send if we know there's no live connection. */
	if (conn->status != CONNECTION_OK)
	{
		FUNC2(&conn->errorMessage,
						  FUNC0("no connection to the server\n"));
		return false;
	}
	/* Can't send while already busy, either. */
	if (conn->asyncStatus != PGASYNC_IDLE)
	{
		FUNC2(&conn->errorMessage,
						  FUNC0("another command is already in progress\n"));
		return false;
	}

	/* initialize async result-accumulation state */
	FUNC1(conn);

	/* reset single-row processing mode */
	conn->singleRowMode = false;

	/* ready to send command message */
	return true;
}