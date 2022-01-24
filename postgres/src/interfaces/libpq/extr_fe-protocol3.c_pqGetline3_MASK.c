#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ sock; scalar_t__ asyncStatus; int /*<<< orphan*/  errorMessage; scalar_t__ copy_is_binary; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int EOF ; 
 scalar_t__ PGASYNC_COPY_BOTH ; 
 scalar_t__ PGASYNC_COPY_OUT ; 
 scalar_t__ PGINVALID_SOCKET ; 
 int FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

int
FUNC6(PGconn *conn, char *s, int maxlen)
{
	int			status;

	if (conn->sock == PGINVALID_SOCKET ||
		(conn->asyncStatus != PGASYNC_COPY_OUT &&
		 conn->asyncStatus != PGASYNC_COPY_BOTH) ||
		conn->copy_is_binary)
	{
		FUNC4(&conn->errorMessage,
						  FUNC1("PQgetline: not doing text COPY OUT\n"));
		*s = '\0';
		return EOF;
	}

	while ((status = FUNC0(conn, s, maxlen - 1)) == 0)
	{
		/* need to load more data */
		if (FUNC3(true, false, conn) ||
			FUNC2(conn) < 0)
		{
			*s = '\0';
			return EOF;
		}
	}

	if (status < 0)
	{
		/* End of copy detected; gin up old-style terminator */
		FUNC5(s, "\\.");
		return 0;
	}

	/* Add null terminator, and strip trailing \n if present */
	if (s[status - 1] == '\n')
	{
		s[status - 1] = '\0';
		return 0;
	}
	else
	{
		s[status] = '\0';
		return 1;
	}
}