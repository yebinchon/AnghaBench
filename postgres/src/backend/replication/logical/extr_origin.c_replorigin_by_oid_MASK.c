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
struct TYPE_2__ {int /*<<< orphan*/  roname; } ;
typedef  scalar_t__ RepOriginId ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_replication_origin ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DoNotReplicateId ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidRepOriginId ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REPLORIGIDENT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 

bool
FUNC11(RepOriginId roident, bool missing_ok, char **roname)
{
	HeapTuple	tuple;
	Form_pg_replication_origin ric;

	FUNC0(FUNC4((Oid) roident));
	FUNC0(roident != InvalidRepOriginId);
	FUNC0(roident != DoNotReplicateId);

	tuple = FUNC6(REPLORIGIDENT,
							FUNC3((Oid) roident));

	if (FUNC2(tuple))
	{
		ric = (Form_pg_replication_origin) FUNC1(tuple);
		*roname = FUNC10(&ric->roname);
		FUNC5(tuple);

		return true;
	}
	else
	{
		*roname = NULL;

		if (!missing_ok)
			FUNC7(ERROR,
					(FUNC8(ERRCODE_UNDEFINED_OBJECT),
					 FUNC9("replication origin with OID %u does not exist",
							roident)));

		return false;
	}
}