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
struct TYPE_3__ {int addTemp; int addCatalog; int /*<<< orphan*/ * schemas; } ;
typedef  TYPE_1__ OverrideSearchPath ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PG_CATALOG_NAMESPACE ; 
 scalar_t__ activeCreationNamespace ; 
 int /*<<< orphan*/  activeSearchPath ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ myTempNamespace ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

OverrideSearchPath *
FUNC7(MemoryContext context)
{
	OverrideSearchPath *result;
	List	   *schemas;
	MemoryContext oldcxt;

	FUNC6();

	oldcxt = FUNC1(context);

	result = (OverrideSearchPath *) FUNC5(sizeof(OverrideSearchPath));
	schemas = FUNC3(activeSearchPath);
	while (schemas && FUNC2(schemas) != activeCreationNamespace)
	{
		if (FUNC2(schemas) == myTempNamespace)
			result->addTemp = true;
		else
		{
			FUNC0(FUNC2(schemas) == PG_CATALOG_NAMESPACE);
			result->addCatalog = true;
		}
		schemas = FUNC4(schemas);
	}
	result->schemas = schemas;

	FUNC1(oldcxt);

	return result;
}