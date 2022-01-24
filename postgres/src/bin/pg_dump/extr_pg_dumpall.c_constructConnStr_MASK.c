#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* PQExpBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static char *
FUNC7(const char **keywords, const char **values)
{
	PQExpBuffer buf = FUNC3();
	char	   *connstr;
	int			i;
	bool		firstkeyword = true;

	/* Construct a new connection string in key='value' format. */
	for (i = 0; keywords[i] != NULL; i++)
	{
		if (FUNC6(keywords[i], "dbname") == 0 ||
			FUNC6(keywords[i], "password") == 0 ||
			FUNC6(keywords[i], "fallback_application_name") == 0)
			continue;

		if (!firstkeyword)
			FUNC2(buf, ' ');
		firstkeyword = false;
		FUNC1(buf, "%s=", keywords[i]);
		FUNC0(buf, values[i]);
	}

	connstr = FUNC5(buf->data);
	FUNC4(buf);
	return connstr;
}