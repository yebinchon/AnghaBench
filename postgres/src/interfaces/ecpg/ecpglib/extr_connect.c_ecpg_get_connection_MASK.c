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
struct connection {int dummy; } ;

/* Variables and functions */
 struct connection* actual_connection ; 
 int /*<<< orphan*/  actual_connection_key ; 
 int /*<<< orphan*/  connections_mutex ; 
 struct connection* FUNC0 (char const*) ; 
 struct connection* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

struct connection *
FUNC5(const char *connection_name)
{
	struct connection *ret = NULL;

	if ((connection_name == NULL) || (FUNC4(connection_name, "CURRENT") == 0))
	{
#ifdef ENABLE_THREAD_SAFETY
		ret = pthread_getspecific(actual_connection_key);

		/*
		 * if no connection in TSD for this thread, get the global default
		 * connection and hope the user knows what they're doing (i.e. using
		 * their own mutex to protect that connection from concurrent accesses
		 */
		/* if !ret then  we  got the connection from TSD */
		if (NULL == ret)
			/* no TSD connection here either, using global */
			ret = actual_connection;
#else
		ret = actual_connection;
#endif
	}
	else
	{
#ifdef ENABLE_THREAD_SAFETY
		pthread_mutex_lock(&connections_mutex);
#endif

		ret = FUNC0(connection_name);

#ifdef ENABLE_THREAD_SAFETY
		pthread_mutex_unlock(&connections_mutex);
#endif
	}

	return ret;
}