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
typedef  int /*<<< orphan*/  ColumnDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  collClause ; 
 int /*<<< orphan*/  collOid ; 
 int /*<<< orphan*/  colname ; 
 int /*<<< orphan*/  constraints ; 
 int /*<<< orphan*/  cooked_default ; 
 int /*<<< orphan*/  fdwoptions ; 
 int /*<<< orphan*/  generated ; 
 int /*<<< orphan*/  identity ; 
 int /*<<< orphan*/  identitySequence ; 
 int /*<<< orphan*/  inhcount ; 
 int /*<<< orphan*/  is_from_type ; 
 int /*<<< orphan*/  is_local ; 
 int /*<<< orphan*/  is_not_null ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  raw_default ; 
 int /*<<< orphan*/  storage ; 
 int /*<<< orphan*/  typeName ; 

__attribute__((used)) static bool
FUNC4(const ColumnDef *a, const ColumnDef *b)
{
	FUNC3(colname);
	FUNC1(typeName);
	FUNC2(inhcount);
	FUNC2(is_local);
	FUNC2(is_not_null);
	FUNC2(is_from_type);
	FUNC2(storage);
	FUNC1(raw_default);
	FUNC1(cooked_default);
	FUNC2(identity);
	FUNC1(identitySequence);
	FUNC2(generated);
	FUNC1(collClause);
	FUNC2(collOid);
	FUNC1(constraints);
	FUNC1(fdwoptions);
	FUNC0(location);

	return true;
}