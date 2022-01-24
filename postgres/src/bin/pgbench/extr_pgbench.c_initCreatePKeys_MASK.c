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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 char* index_tablespace ; 
 int FUNC4 (char const* const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char*,char const* const,int) ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(PGconn *con)
{
	static const char *const DDLINDEXes[] = {
		"alter table pgbench_branches add primary key (bid)",
		"alter table pgbench_tellers add primary key (tid)",
		"alter table pgbench_accounts add primary key (aid)"
	};
	int			i;

	FUNC3(stderr, "creating primary keys...\n");
	for (i = 0; i < FUNC4(DDLINDEXes); i++)
	{
		char		buffer[256];

		FUNC6(buffer, DDLINDEXes[i], sizeof(buffer));

		if (index_tablespace != NULL)
		{
			char	   *escape_tablespace;

			escape_tablespace = FUNC0(con, index_tablespace,
												   FUNC7(index_tablespace));
			FUNC5(buffer + FUNC7(buffer), sizeof(buffer) - FUNC7(buffer),
					 " using index tablespace %s", escape_tablespace);
			FUNC1(escape_tablespace);
		}

		FUNC2(con, buffer);
	}
}