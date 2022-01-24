#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  location; } ;
typedef  TYPE_1__ TypeName ;
typedef  int /*<<< orphan*/ * Type ;
struct TYPE_7__ {int /*<<< orphan*/  oid; } ;
typedef  int /*<<< orphan*/  ParseState ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__* Form_pg_type ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

Oid
FUNC8(ParseState *pstate, const TypeName *typeName, bool missing_ok)
{
	Oid			typoid;
	Type		tup;

	tup = FUNC1(pstate, typeName, NULL, missing_ok);
	if (tup == NULL)
	{
		if (!missing_ok)
			FUNC4(ERROR,
					(FUNC5(ERRCODE_UNDEFINED_OBJECT),
					 FUNC6("type \"%s\" does not exist",
							FUNC3(typeName)),
					 FUNC7(pstate, typeName->location)));

		return InvalidOid;
	}

	typoid = ((Form_pg_type) FUNC0(tup))->oid;
	FUNC2(tup);

	return typoid;
}