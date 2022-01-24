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
struct sqlca_t {int dummy; } ;
struct connection {struct connection* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECPG_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY ; 
 struct sqlca_t* FUNC0 () ; 
 struct connection* all_connections ; 
 int /*<<< orphan*/  connections_mutex ; 
 int /*<<< orphan*/  FUNC1 (struct connection*) ; 
 struct connection* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sqlca_t*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 

bool
FUNC9(int lineno, const char *connection_name)
{
	struct sqlca_t *sqlca = FUNC0();
	struct connection *con;

	if (sqlca == NULL)
	{
		FUNC5(lineno, ECPG_OUT_OF_MEMORY,
				   ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY, NULL);
		return false;
	}

#ifdef ENABLE_THREAD_SAFETY
	pthread_mutex_lock(&connections_mutex);
#endif

	if (FUNC8(connection_name, "ALL") == 0)
	{
		FUNC4(sqlca);
		for (con = all_connections; con;)
		{
			struct connection *f = con;

			con = con->next;
			FUNC1(f);
		}
	}
	else
	{
		con = FUNC2(connection_name);

		if (!FUNC3(con, connection_name, lineno))
		{
#ifdef ENABLE_THREAD_SAFETY
			pthread_mutex_unlock(&connections_mutex);
#endif
			return false;
		}
		else
			FUNC1(con);
	}

#ifdef ENABLE_THREAD_SAFETY
	pthread_mutex_unlock(&connections_mutex);
#endif

	return true;
}