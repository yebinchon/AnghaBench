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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ PG_CATALOG_NAMESPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(StringInfo out, Oid nspid)
{
	if (nspid == PG_CATALOG_NAMESPACE)
		FUNC2(out, '\0');
	else
	{
		char	   *nspname = FUNC1(nspid);

		if (nspname == NULL)
			FUNC0(ERROR, "cache lookup failed for namespace %u",
				 nspid);

		FUNC3(out, nspname);
	}
}