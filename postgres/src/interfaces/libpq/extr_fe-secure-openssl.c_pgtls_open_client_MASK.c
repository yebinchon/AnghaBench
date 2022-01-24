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
struct TYPE_6__ {int /*<<< orphan*/ * ssl; } ;
typedef  int /*<<< orphan*/  PostgresPollingStatusType ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  PGRES_POLLING_FAILED ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

PostgresPollingStatusType
FUNC3(PGconn *conn)
{
	/* First time through? */
	if (conn->ssl == NULL)
	{
		/*
		 * Create a connection-specific SSL object, and load client
		 * certificate, private key, and trusted CA certs.
		 */
		if (FUNC0(conn) != 0)
		{
			/* initialize_SSL already put a message in conn->errorMessage */
			FUNC2(conn);
			return PGRES_POLLING_FAILED;
		}
	}

	/* Begin or continue the actual handshake */
	return FUNC1(conn);
}