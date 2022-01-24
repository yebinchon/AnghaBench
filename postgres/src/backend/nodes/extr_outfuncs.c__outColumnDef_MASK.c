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
typedef  int /*<<< orphan*/  ColumnDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
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

__attribute__((used)) static void
FUNC8(StringInfo str, const ColumnDef *node)
{
	FUNC5("COLUMNDEF");

	FUNC7(colname);
	FUNC4(typeName);
	FUNC2(inhcount);
	FUNC0(is_local);
	FUNC0(is_not_null);
	FUNC0(is_from_type);
	FUNC1(storage);
	FUNC4(raw_default);
	FUNC4(cooked_default);
	FUNC1(identity);
	FUNC4(identitySequence);
	FUNC1(generated);
	FUNC4(collClause);
	FUNC6(collOid);
	FUNC4(constraints);
	FUNC4(fdwoptions);
	FUNC3(location);
}