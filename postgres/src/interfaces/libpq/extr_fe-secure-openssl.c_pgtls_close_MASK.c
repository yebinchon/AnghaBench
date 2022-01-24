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
struct TYPE_3__ {int ssl_in_use; int /*<<< orphan*/ * engine; int /*<<< orphan*/ * peer; int /*<<< orphan*/ * ssl; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6(PGconn *conn)
{
	bool		destroy_needed = false;

	if (conn->ssl)
	{
		/*
		 * We can't destroy everything SSL-related here due to the possible
		 * later calls to OpenSSL routines which may need our thread
		 * callbacks, so set a flag here and check at the end.
		 */
		destroy_needed = true;

		FUNC3(conn->ssl);
		FUNC2(conn->ssl);
		conn->ssl = NULL;
		conn->ssl_in_use = false;
	}

	if (conn->peer)
	{
		FUNC4(conn->peer);
		conn->peer = NULL;
	}

#ifdef USE_SSL_ENGINE
	if (conn->engine)
	{
		ENGINE_finish(conn->engine);
		ENGINE_free(conn->engine);
		conn->engine = NULL;
	}
#endif

	/*
	 * This will remove our SSL locking hooks, if this is the last SSL
	 * connection, which means we must wait to call it until after all SSL
	 * calls have been made, otherwise we can end up with a race condition and
	 * possible deadlocks.
	 *
	 * See comments above destroy_ssl_system().
	 */
	if (destroy_needed)
		FUNC5();
}