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
struct connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECPG_NO_CONN ; 
 int /*<<< orphan*/  ECPG_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ECPG_SQLSTATE_CONNECTION_DOES_NOT_EXIST ; 
 int /*<<< orphan*/  ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY ; 
 struct sqlca_t* FUNC0 () ; 
 char const* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sqlca_t*) ; 
 int /*<<< orphan*/  FUNC3 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

bool
FUNC4(const struct connection *con, const char *connection_name, const int lineno)
{
	struct sqlca_t *sqlca = FUNC0();

	if (sqlca == NULL)
	{
		FUNC3(lineno, ECPG_OUT_OF_MEMORY, ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY,
				   NULL);
		return false;
	}

	FUNC2(sqlca);
	if (con == NULL)
	{
		FUNC3(lineno, ECPG_NO_CONN, ECPG_SQLSTATE_CONNECTION_DOES_NOT_EXIST,
				   connection_name ? connection_name : FUNC1("NULL"));
		return false;
	}

	return true;
}