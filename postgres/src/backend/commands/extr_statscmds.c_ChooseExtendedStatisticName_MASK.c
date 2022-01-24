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
typedef  int /*<<< orphan*/  modlabel ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_statistic_ext_oid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  STATEXTNAMENSP ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 char* FUNC5 (char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*,int) ; 

__attribute__((used)) static char *
FUNC8(const char *name1, const char *name2,
							const char *label, Oid namespaceid)
{
	int			pass = 0;
	char	   *stxname = NULL;
	char		modlabel[NAMEDATALEN];

	/* try the unmodified label first */
	FUNC4(modlabel, label, sizeof(modlabel));

	for (;;)
	{
		Oid			existingstats;

		stxname = FUNC5(name1, name2, modlabel);

		existingstats = FUNC0(STATEXTNAMENSP, Anum_pg_statistic_ext_oid,
										FUNC3(stxname),
										FUNC1(namespaceid));
		if (!FUNC2(existingstats))
			break;

		/* found a conflict, so try a new name component */
		FUNC6(stxname);
		FUNC7(modlabel, sizeof(modlabel), "%s%d", label, ++pass);
	}

	return stxname;
}