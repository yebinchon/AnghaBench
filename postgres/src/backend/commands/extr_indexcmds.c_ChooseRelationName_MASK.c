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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char const*,int) ; 

char *
FUNC7(const char *name1, const char *name2,
				   const char *label, Oid namespaceid,
				   bool isconstraint)
{
	int			pass = 0;
	char	   *relname = NULL;
	char		modlabel[NAMEDATALEN];

	/* try the unmodified label first */
	FUNC2(modlabel, label, sizeof(modlabel));

	for (;;)
	{
		relname = FUNC4(name1, name2, modlabel);

		if (!FUNC1(FUNC3(relname, namespaceid)))
		{
			if (!isconstraint ||
				!FUNC0(relname, namespaceid))
				break;
		}

		/* found a conflict, so try a new name component */
		FUNC5(relname);
		FUNC6(modlabel, sizeof(modlabel), "%s%d", label, ++pass);
	}

	return relname;
}