#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  status; int /*<<< orphan*/  asyncStatus; int /*<<< orphan*/  errorMessage; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECTION_BAD ; 
 int /*<<< orphan*/  PGASYNC_READY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char,int) ; 

__attribute__((used)) static void
FUNC4(PGconn *conn, char id, int msgLength)
{
	FUNC3(&conn->errorMessage,
					  FUNC0(
									"lost synchronization with server: got message type \"%c\", length %d\n"),
					  id, msgLength);
	/* build an error result holding the error message */
	FUNC2(conn);
	conn->asyncStatus = PGASYNC_READY;	/* drop out of GetResult wait loop */
	/* flush input data since we're giving up on processing it */
	FUNC1(conn, true);
	conn->status = CONNECTION_BAD;	/* No more connection to backend */
}