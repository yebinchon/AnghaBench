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
struct TYPE_2__ {scalar_t__ ev_class; scalar_t__ oid; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_rewrite ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  RULERELNAME ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

Oid
FUNC11(Oid relid, const char *rulename, bool missing_ok)
{
	HeapTuple	tuple;
	Form_pg_rewrite ruleform;
	Oid			ruleoid;

	/* Find the rule's pg_rewrite tuple, get its OID */
	tuple = FUNC6(RULERELNAME,
							FUNC3(relid),
							FUNC4(rulename));
	if (!FUNC2(tuple))
	{
		if (missing_ok)
			return InvalidOid;
		FUNC7(ERROR,
				(FUNC8(ERRCODE_UNDEFINED_OBJECT),
				 FUNC9("rule \"%s\" for relation \"%s\" does not exist",
						rulename, FUNC10(relid))));
	}
	ruleform = (Form_pg_rewrite) FUNC1(tuple);
	FUNC0(relid == ruleform->ev_class);
	ruleoid = ruleform->oid;
	FUNC5(tuple);
	return ruleoid;
}