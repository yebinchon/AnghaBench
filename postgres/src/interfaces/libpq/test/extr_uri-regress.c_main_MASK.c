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
struct TYPE_4__ {char* keyword; char* val; } ;
typedef  TYPE_1__ PQconninfoOption ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 TYPE_1__* FUNC1 (char*,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (char*,char*) ; 

int
FUNC5(int argc, char *argv[])
{
	PQconninfoOption *opts;
	PQconninfoOption *defs;
	PQconninfoOption *opt;
	PQconninfoOption *def;
	char	   *errmsg = NULL;
	bool		local = true;

	if (argc != 2)
		return 1;

	opts = FUNC1(argv[1], &errmsg);
	if (opts == NULL)
	{
		FUNC2(stderr, "uri-regress: %s", errmsg);
		return 1;
	}

	defs = FUNC0();
	if (defs == NULL)
	{
		FUNC2(stderr, "uri-regress: cannot fetch default options\n");
		return 1;
	}

	/*
	 * Loop on the options, and print the value of each if not the default.
	 *
	 * XXX this coding assumes that PQconninfoOption structs always have the
	 * keywords in the same order.
	 */
	for (opt = opts, def = defs; opt->keyword; ++opt, ++def)
	{
		if (opt->val != NULL)
		{
			if (def->val == NULL || FUNC4(opt->val, def->val) != 0)
				FUNC3("%s='%s' ", opt->keyword, opt->val);

			/*
			 * Try to detect if this is a Unix-domain socket or inet.  This is
			 * a bit grotty but it's the same thing that libpq itself does.
			 *
			 * Note that we directly test for '/' instead of using
			 * is_absolute_path, as that would be considerably more messy.
			 * This would fail on Windows, but that platform doesn't have
			 * Unix-domain sockets anyway.
			 */
			if (*opt->val &&
				(FUNC4(opt->keyword, "hostaddr") == 0 ||
				 (FUNC4(opt->keyword, "host") == 0 && *opt->val != '/')))
			{
				local = false;
			}
		}
	}

	if (local)
		FUNC3("(local)\n");
	else
		FUNC3("(inet)\n");

	return 0;
}