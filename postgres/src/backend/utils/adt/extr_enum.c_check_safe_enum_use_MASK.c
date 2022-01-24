#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_6__ {int /*<<< orphan*/  enumtypid; int /*<<< orphan*/  enumlabel; int /*<<< orphan*/  oid; } ;
struct TYPE_5__ {int /*<<< orphan*/  t_data; } ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_enum ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNSAFE_NEW_ENUM_VALUE_USAGE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(HeapTuple enumval_tup)
{
	TransactionId xmin;
	Form_pg_enum en = (Form_pg_enum) FUNC1(enumval_tup);

	/*
	 * If the row is hinted as committed, it's surely safe.  This provides a
	 * fast path for all normal use-cases.
	 */
	if (FUNC3(enumval_tup->t_data))
		return;

	/*
	 * Usually, a row would get hinted as committed when it's read or loaded
	 * into syscache; but just in case not, let's check the xmin directly.
	 */
	xmin = FUNC2(enumval_tup->t_data);
	if (!FUNC6(xmin) &&
		FUNC5(xmin))
		return;

	/*
	 * Check if the enum value is blacklisted.  If not, it's safe, because it
	 * was made during CREATE TYPE AS ENUM and can't be shorter-lived than its
	 * owning type.  (This'd also be false for values made by other
	 * transactions; but the previous tests should have handled all of those.)
	 */
	if (!FUNC0(en->oid))
		return;

	/*
	 * There might well be other tests we could do here to narrow down the
	 * unsafe conditions, but for now just raise an exception.
	 */
	FUNC7(ERROR,
			(FUNC8(ERRCODE_UNSAFE_NEW_ENUM_VALUE_USAGE),
			 FUNC10("unsafe use of new value \"%s\" of enum type %s",
					FUNC4(en->enumlabel),
					FUNC11(en->enumtypid)),
			 FUNC9("New enum values must be committed before they can be used.")));
}