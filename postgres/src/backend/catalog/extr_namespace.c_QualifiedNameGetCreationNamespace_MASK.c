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
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char**,char**) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_SCHEMA ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  activeCreationNamespace ; 
 scalar_t__ activeTempCreationPending ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  myTempNamespace ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (char*,char*) ; 

Oid
FUNC9(List *names, char **objname_p)
{
	char	   *schemaname;
	Oid			namespaceId;

	/* deconstruct the name list */
	FUNC1(names, &schemaname, objname_p);

	if (schemaname)
	{
		/* check for pg_temp alias */
		if (FUNC8(schemaname, "pg_temp") == 0)
		{
			/* Initialize temp namespace */
			FUNC0(false);
			return myTempNamespace;
		}
		/* use exact schema given */
		namespaceId = FUNC6(schemaname, false);
		/* we do not check for USAGE rights here! */
	}
	else
	{
		/* use the default creation namespace */
		FUNC7();
		if (activeTempCreationPending)
		{
			/* Need to initialize temp namespace */
			FUNC0(true);
			return myTempNamespace;
		}
		namespaceId = activeCreationNamespace;
		if (!FUNC2(namespaceId))
			FUNC3(ERROR,
					(FUNC4(ERRCODE_UNDEFINED_SCHEMA),
					 FUNC5("no schema has been selected to create in")));
	}

	return namespaceId;
}