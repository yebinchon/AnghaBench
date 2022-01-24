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
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NAMESPACEOID ; 
 int /*<<< orphan*/  NamespaceCallback ; 
 int /*<<< orphan*/  PG_CATALOG_NAMESPACE ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  activeCreationNamespace ; 
 int /*<<< orphan*/  activeSearchPath ; 
 int activeTempCreationPending ; 
 int /*<<< orphan*/  baseCreationNamespace ; 
 int /*<<< orphan*/  baseSearchPath ; 
 int baseSearchPathValid ; 
 int baseTempCreationPending ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  namespaceUser ; 

void
FUNC5(void)
{
	if (FUNC2())
	{
		/*
		 * In bootstrap mode, the search path must be 'pg_catalog' so that
		 * tables are created in the proper namespace; ignore the GUC setting.
		 */
		MemoryContext oldcxt;

		oldcxt = FUNC3(TopMemoryContext);
		baseSearchPath = FUNC4(PG_CATALOG_NAMESPACE);
		FUNC3(oldcxt);
		baseCreationNamespace = PG_CATALOG_NAMESPACE;
		baseTempCreationPending = false;
		baseSearchPathValid = true;
		namespaceUser = FUNC1();
		activeSearchPath = baseSearchPath;
		activeCreationNamespace = baseCreationNamespace;
		activeTempCreationPending = baseTempCreationPending;
	}
	else
	{
		/*
		 * In normal mode, arrange for a callback on any syscache invalidation
		 * of pg_namespace rows.
		 */
		FUNC0(NAMESPACEOID,
									  NamespaceCallback,
									  (Datum) 0);
		/* Force search path to be recomputed on next use */
		baseSearchPathValid = false;
	}
}