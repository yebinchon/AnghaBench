#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * Type ;
struct TYPE_2__ {scalar_t__ typisdefined; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__* Form_pg_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Oid
FUNC7(List *funcname)
{
	Oid			result;
	Type		typtup;

	/*
	 * temp_ok=false protects the <refsect1 id="sql-createfunction-security">
	 * contract for writing SECURITY DEFINER functions safely.
	 */
	typtup = FUNC1(NULL, FUNC4(funcname),
									NULL, false, false);
	if (typtup == NULL)
		return InvalidOid;

	if (((Form_pg_type) FUNC0(typtup))->typisdefined &&
		!FUNC2(FUNC6(typtup)))
		result = FUNC5(typtup);
	else
		result = InvalidOid;

	FUNC3(typtup);
	return result;
}