#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * streamConn; } ;
typedef  TYPE_1__ WalReceiverConn ;
struct TYPE_13__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_12__ {char* val; int /*<<< orphan*/ * keyword; int /*<<< orphan*/  dispchar; } ;
typedef  TYPE_2__ PQconninfoOption ;
typedef  TYPE_3__ PQExpBufferData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (TYPE_3__) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 

__attribute__((used)) static char *
FUNC12(WalReceiverConn *conn)
{
	PQconninfoOption *conn_opts;
	PQconninfoOption *conn_opt;
	PQExpBufferData buf;
	char	   *retval;

	FUNC0(conn->streamConn != NULL);

	FUNC8(&buf);
	conn_opts = FUNC2(conn->streamConn);

	if (conn_opts == NULL)
		FUNC6(ERROR,
				(FUNC7("could not parse connection string: %s",
						FUNC4("out of memory"))));

	/* build a clean connection string from pieces */
	for (conn_opt = conn_opts; conn_opt->keyword != NULL; conn_opt++)
	{
		bool		obfuscate;

		/* Skip debug and empty options */
		if (FUNC10(conn_opt->dispchar, 'D') ||
			conn_opt->val == NULL ||
			conn_opt->val[0] == '\0')
			continue;

		/* Obfuscate security-sensitive options */
		obfuscate = FUNC10(conn_opt->dispchar, '*') != NULL;

		FUNC5(&buf, "%s%s=%s",
						  buf.len == 0 ? "" : " ",
						  conn_opt->keyword,
						  obfuscate ? "********" : conn_opt->val);
	}

	FUNC3(conn_opts);

	retval = FUNC1(buf) ? NULL : FUNC9(buf.data);
	FUNC11(&buf);
	return retval;
}