#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sebuf ;
typedef  int /*<<< orphan*/  on ;
struct TYPE_3__ {int /*<<< orphan*/  errorMessage; int /*<<< orphan*/  sock; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int PG_STRERROR_R_BUFLEN ; 
 int /*<<< orphan*/  SOCK_ERRNO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC4(PGconn *conn)
{
#ifdef	TCP_NODELAY
	int			on = 1;

	if (setsockopt(conn->sock, IPPROTO_TCP, TCP_NODELAY,
				   (char *) &on,
				   sizeof(on)) < 0)
	{
		char		sebuf[PG_STRERROR_R_BUFLEN];

		appendPQExpBuffer(&conn->errorMessage,
						  libpq_gettext("could not set socket to TCP no delay mode: %s\n"),
						  SOCK_STRERROR(SOCK_ERRNO, sebuf, sizeof(sebuf)));
		return 0;
	}
#endif

	return 1;
}