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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char RELKIND_PARTITIONED_INDEX ; 
 char RELKIND_PARTITIONED_TABLE ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 char FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4(Oid relid)
{
	char		relkind;
	bool		relispartition;

	/* Check if relation exists */
	if (!FUNC1(RELOID, FUNC0(relid)))
		return false;

	relkind = FUNC3(relid);
	relispartition = FUNC2(relid);

	/* Only allow relation types that can appear in partition trees. */
	if (!relispartition &&
		relkind != RELKIND_PARTITIONED_TABLE &&
		relkind != RELKIND_PARTITIONED_INDEX)
		return false;

	return true;
}