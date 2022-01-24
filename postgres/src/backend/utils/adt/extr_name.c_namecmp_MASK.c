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
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/ * Name ;

/* Variables and functions */
 scalar_t__ C_COLLATION_OID ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC4(Name arg1, Name arg2, Oid collid)
{
	/* Fast path for common case used in system catalogs */
	if (collid == C_COLLATION_OID)
		return FUNC2(FUNC0(*arg1), FUNC0(*arg2), NAMEDATALEN);

	/* Else rely on the varstr infrastructure */
	return FUNC3(FUNC0(*arg1), FUNC1(FUNC0(*arg1)),
					  FUNC0(*arg2), FUNC1(FUNC0(*arg2)),
					  collid);
}