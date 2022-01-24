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
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_2__ {int typbyval; int /*<<< orphan*/  typlen; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_type ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPEOID ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void
FUNC6(Oid typid, int16 *typlen, bool *typbyval)
{
	HeapTuple	tp;
	Form_pg_type typtup;

	tp = FUNC4(TYPEOID, FUNC2(typid));
	if (!FUNC1(tp))
		FUNC5(ERROR, "cache lookup failed for type %u", typid);
	typtup = (Form_pg_type) FUNC0(tp);
	*typlen = typtup->typlen;
	*typbyval = typtup->typbyval;
	FUNC3(tp);
}