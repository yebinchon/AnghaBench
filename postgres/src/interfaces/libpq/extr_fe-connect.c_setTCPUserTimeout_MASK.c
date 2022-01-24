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
typedef  int /*<<< orphan*/  timeout ;
typedef  int /*<<< orphan*/  sebuf ;
struct TYPE_4__ {int /*<<< orphan*/  errorMessage; int /*<<< orphan*/  sock; int /*<<< orphan*/ * pgtcp_user_timeout; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOCK_ERRNO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  TCP_USER_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,TYPE_1__*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC5(PGconn *conn)
{
	int			timeout;

	if (conn->pgtcp_user_timeout == NULL)
		return 1;

	if (!FUNC3(conn->pgtcp_user_timeout, &timeout, conn,
						 "tcp_user_timeout"))
		return 0;

	if (timeout < 0)
		timeout = 0;

#ifdef TCP_USER_TIMEOUT
	if (setsockopt(conn->sock, IPPROTO_TCP, TCP_USER_TIMEOUT,
				   (char *) &timeout, sizeof(timeout)) < 0)
	{
		char		sebuf[256];

		appendPQExpBuffer(&conn->errorMessage,
						  libpq_gettext("setsockopt(%s) failed: %s\n"),
						  "TCP_USER_TIMEOUT",
						  SOCK_STRERROR(SOCK_ERRNO, sebuf, sizeof(sebuf)));
		return 0;
	}
#endif

	return 1;
}