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
typedef  int /*<<< orphan*/  Snapshot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidPid ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ XactDeferrable ; 
 scalar_t__ XactReadOnly ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

Snapshot
FUNC10(Snapshot snapshot)
{
	FUNC0(FUNC3());

	/*
	 * Can't use serializable mode while recovery is still active, as it is,
	 * for example, on a hot standby.  We could get here despite the check in
	 * check_XactIsoLevel() if default_transaction_isolation is set to
	 * serializable, so phrase the hint accordingly.
	 */
	if (FUNC4())
		FUNC5(ERROR,
				(FUNC6(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC9("cannot use serializable mode in a hot standby"),
				 FUNC7("\"default_transaction_isolation\" is set to \"serializable\"."),
				 FUNC8("You can use \"SET default_transaction_isolation = 'repeatable read'\" to change the default.")));

	/*
	 * A special optimization is available for SERIALIZABLE READ ONLY
	 * DEFERRABLE transactions -- we can wait for a suitable snapshot and
	 * thereby avoid all SSI overhead once it's running.
	 */
	if (XactReadOnly && XactDeferrable)
		return FUNC1(snapshot);

	return FUNC2(snapshot,
												 NULL, InvalidPid);
}