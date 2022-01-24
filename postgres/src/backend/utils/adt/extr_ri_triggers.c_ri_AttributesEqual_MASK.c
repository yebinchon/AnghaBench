#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  fn_oid; } ;
struct TYPE_4__ {int /*<<< orphan*/  eq_opr_finfo; TYPE_3__ cast_func_finfo; } ;
typedef  TYPE_1__ RI_CompareHashEntry ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEFAULT_COLLATION_OID ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7(Oid eq_opr, Oid typeid,
				   Datum oldvalue, Datum newvalue)
{
	RI_CompareHashEntry *entry = FUNC6(eq_opr, typeid);

	/* Do we need to cast the values? */
	if (FUNC5(entry->cast_func_finfo.fn_oid))
	{
		oldvalue = FUNC3(&entry->cast_func_finfo,
								 oldvalue,
								 FUNC4(-1), /* typmod */
								 FUNC0(false));	/* implicit coercion */
		newvalue = FUNC3(&entry->cast_func_finfo,
								 newvalue,
								 FUNC4(-1), /* typmod */
								 FUNC0(false));	/* implicit coercion */
	}

	/*
	 * Apply the comparison operator.
	 *
	 * Note: This function is part of a call stack that determines whether an
	 * update to a row is significant enough that it needs checking or action
	 * on the other side of a foreign-key constraint.  Therefore, the
	 * comparison here would need to be done with the collation of the *other*
	 * table.  For simplicity (e.g., we might not even have the other table
	 * open), we'll just use the default collation here, which could lead to
	 * some false negatives.  All this would break if we ever allow
	 * database-wide collations to be nondeterministic.
	 */
	return FUNC1(FUNC2(&entry->eq_opr_finfo,
										  DEFAULT_COLLATION_OID,
										  oldvalue, newvalue));
}