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
struct TYPE_2__ {char amtype; int /*<<< orphan*/  oid; int /*<<< orphan*/  amname; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_am ;

/* Variables and functions */
 int /*<<< orphan*/  AMNAME ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC10 (char) ; 

__attribute__((used)) static Oid
FUNC11(const char *amname, char amtype, bool missing_ok)
{
	HeapTuple	tup;
	Oid			oid = InvalidOid;

	tup = FUNC6(AMNAME, FUNC0(amname));
	if (FUNC2(tup))
	{
		Form_pg_am	amform = (Form_pg_am) FUNC1(tup);

		if (amtype != '\0' &&
			amform->amtype != amtype)
			FUNC7(ERROR,
					(FUNC8(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
					 FUNC9("access method \"%s\" is not of type %s",
							FUNC3(amform->amname),
							FUNC10(amtype))));

		oid = amform->oid;
		FUNC5(tup);
	}

	if (!FUNC4(oid) && !missing_ok)
		FUNC7(ERROR,
				(FUNC8(ERRCODE_UNDEFINED_OBJECT),
				 FUNC9("access method \"%s\" does not exist", amname)));
	return oid;
}