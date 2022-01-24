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
struct TYPE_4__ {char* val; int /*<<< orphan*/ * keyword; } ;
typedef  TYPE_1__ PQconninfoOption ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_S_R_E_PROHIBITED_SQL_STATEMENT_ATTEMPTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8(const char *connstr)
{
	if (!FUNC7())
	{
		PQconninfoOption *options;
		PQconninfoOption *option;
		bool		connstr_gives_password = false;

		options = FUNC1(connstr, NULL);
		if (options)
		{
			for (option = options; option->keyword != NULL; option++)
			{
				if (FUNC6(option->keyword, "password") == 0)
				{
					if (option->val != NULL && option->val[0] != '\0')
					{
						connstr_gives_password = true;
						break;
					}
				}
			}
			FUNC0(options);
		}

		if (!connstr_gives_password)
			FUNC2(ERROR,
					(FUNC3(ERRCODE_S_R_E_PROHIBITED_SQL_STATEMENT_ATTEMPTED),
					 FUNC5("password is required"),
					 FUNC4("Non-superusers must provide a password in the connection string.")));
	}
}