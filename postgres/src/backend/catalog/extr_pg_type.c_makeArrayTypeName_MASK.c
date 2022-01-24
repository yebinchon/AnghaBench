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
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPENAMENSP ; 
 int /*<<< orphan*/  TypeRelationId ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int) ; 

char *
FUNC13(const char *typeName, Oid typeNamespace)
{
	char	   *arr = (char *) FUNC7(NAMEDATALEN);
	int			namelen = FUNC9(typeName);
	Relation	pg_type_desc;
	int			i;

	/*
	 * The idea is to prepend underscores as needed until we make a name that
	 * doesn't collide with anything...
	 */
	pg_type_desc = FUNC11(TypeRelationId, AccessShareLock);

	for (i = 1; i < NAMEDATALEN - 1; i++)
	{
		arr[i - 1] = '_';
		if (i + namelen < NAMEDATALEN)
			FUNC8(arr + i, typeName);
		else
		{
			FUNC6(arr + i, typeName, NAMEDATALEN - i);
			FUNC12(arr, NAMEDATALEN, false);
		}
		if (!FUNC2(TYPENAMENSP,
								   FUNC0(arr),
								   FUNC1(typeNamespace)))
			break;
	}

	FUNC10(pg_type_desc, AccessShareLock);

	if (i >= NAMEDATALEN - 1)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_DUPLICATE_OBJECT),
				 FUNC5("could not form array type name for type \"%s\"",
						typeName)));

	return arr;
}