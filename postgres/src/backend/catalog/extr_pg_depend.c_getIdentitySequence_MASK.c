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
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  DEPENDENCY_INTERNAL ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

Oid
FUNC4(Oid relid, AttrNumber attnum, bool missing_ok)
{
	List	   *seqlist = FUNC1(relid, attnum, DEPENDENCY_INTERNAL);

	if (FUNC3(seqlist) > 1)
		FUNC0(ERROR, "more than one owned sequence found");
	else if (FUNC3(seqlist) < 1)
	{
		if (missing_ok)
			return InvalidOid;
		else
			FUNC0(ERROR, "no owned sequence found");
	}

	return FUNC2(seqlist);
}