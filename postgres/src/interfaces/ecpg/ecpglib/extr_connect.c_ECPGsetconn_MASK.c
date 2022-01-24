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
 struct connection* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct connection*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct connection*) ; 

bool
FUNC3(int lineno, const char *connection_name)
{
	struct connection *con = FUNC0(connection_name);

	if (!FUNC1(con, connection_name, lineno))
		return false;

#ifdef ENABLE_THREAD_SAFETY
	pthread_setspecific(actual_connection_key, con);
#else
	actual_connection = con;
#endif
	return true;
}