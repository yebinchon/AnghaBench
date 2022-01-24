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
struct TYPE_3__ {int /*<<< orphan*/  userid; } ;
typedef  TYPE_1__ UserMapping ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_S_R_E_PROHIBITED_SQL_STATEMENT_ATTEMPTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(const char **keywords, const char **values, UserMapping *user)
{
	int			i;

	/* no check required if superuser */
	if (FUNC5(user->userid))
		return;

	/* ok if params contain a non-empty password */
	for (i = 0; keywords[i] != NULL; i++)
	{
		if (FUNC4(keywords[i], "password") == 0 && values[i][0] != '\0')
			return;
	}

	FUNC0(ERROR,
			(FUNC1(ERRCODE_S_R_E_PROHIBITED_SQL_STATEMENT_ATTEMPTED),
			 FUNC3("password is required"),
			 FUNC2("Non-superusers must provide a password in the user mapping.")));
}