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
struct TYPE_4__ {char* name; int encoding; } ;
typedef  TYPE_1__ pg_encname ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_NAME_TOO_LONG ; 
 int /*<<< orphan*/  ERROR ; 
 int NAMEDATALEN ; 
 char* FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC5 (TYPE_1__*) ; 
 TYPE_1__* pg_encname_tbl ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC6 (char*,char*) ; 
 int FUNC7 (char const*) ; 

int
FUNC8(const char *name)
{
	unsigned int nel = FUNC5(pg_encname_tbl);
	const pg_encname *base = pg_encname_tbl,
			   *last = base + nel - 1,
			   *position;
	int			result;
	char		buff[NAMEDATALEN],
			   *key;

	if (name == NULL || *name == '\0')
		return -1;

	if (FUNC7(name) >= NAMEDATALEN)
	{
#ifdef FRONTEND
		fprintf(stderr, "encoding name too long\n");
		return -1;
#else
		FUNC1(ERROR,
				(FUNC2(ERRCODE_NAME_TOO_LONG),
				 FUNC3("encoding name too long")));
#endif
	}
	key = FUNC0(name, buff);

	while (last >= base)
	{
		position = base + ((last - base) >> 1);
		result = key[0] - position->name[0];

		if (result == 0)
		{
			result = FUNC6(key, position->name);
			if (result == 0)
				return position->encoding;
		}
		if (result < 0)
			last = position - 1;
		else
			base = position + 1;
	}
	return -1;
}