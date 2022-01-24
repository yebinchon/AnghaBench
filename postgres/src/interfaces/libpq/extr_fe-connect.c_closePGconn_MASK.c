#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int nonblocking; int /*<<< orphan*/  errorMessage; int /*<<< orphan*/  xactStatus; int /*<<< orphan*/  asyncStatus; int /*<<< orphan*/  status; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECTION_BAD ; 
 int /*<<< orphan*/  PGASYNC_IDLE ; 
 int /*<<< orphan*/  PQTRANS_IDLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(PGconn *conn)
{
	/*
	 * If possible, send Terminate message to close the connection politely.
	 */
	FUNC5(conn);

	/*
	 * Must reset the blocking status so a possible reconnect will work.
	 *
	 * Don't call PQsetnonblocking() because it will fail if it's unable to
	 * flush the connection.
	 */
	conn->nonblocking = false;

	/*
	 * Close the connection, reset all transient state, flush I/O buffers.
	 */
	FUNC1(conn, true);
	conn->status = CONNECTION_BAD;	/* Well, not really _bad_ - just absent */
	conn->asyncStatus = PGASYNC_IDLE;
	conn->xactStatus = PQTRANS_IDLE;
	FUNC0(conn);	/* deallocate result */
	FUNC4(&conn->errorMessage);
	FUNC3(conn);

	/* Reset all state obtained from server, too */
	FUNC2(conn);
}