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
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  GucSource ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 

bool
FUNC5(char **newval, void **extra, GucSource source)
{
	char	   *rawname;
	List	   *namelist;

	/* Need a modifiable copy of string */
	rawname = FUNC4(*newval);

	/* Parse string into list of identifiers */
	if (!FUNC1(rawname, ',', &namelist))
	{
		/* syntax error in name list */
		FUNC0("List syntax is invalid.");
		FUNC3(rawname);
		FUNC2(namelist);
		return false;
	}

	/*
	 * We used to try to check that the named schemas exist, but there are
	 * many valid use-cases for having search_path settings that include
	 * schemas that don't exist; and often, we are not inside a transaction
	 * here and so can't consult the system catalogs anyway.  So now, the only
	 * requirement is syntactic validity of the identifier list.
	 */

	FUNC3(rawname);
	FUNC2(namelist);

	return true;
}