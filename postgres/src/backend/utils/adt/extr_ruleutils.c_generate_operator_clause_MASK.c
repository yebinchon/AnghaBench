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
struct TYPE_2__ {char oprkind; scalar_t__ oprleft; scalar_t__ oprright; int /*<<< orphan*/  oprnamespace; int /*<<< orphan*/  oprname; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_operator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEROID ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 char const* FUNC12 (char*) ; 

void
FUNC13(StringInfo buf,
						 const char *leftop, Oid leftoptype,
						 Oid opoid,
						 const char *rightop, Oid rightoptype)
{
	HeapTuple	opertup;
	Form_pg_operator operform;
	char	   *oprname;
	char	   *nspname;

	opertup = FUNC6(OPEROID, FUNC4(opoid));
	if (!FUNC2(opertup))
		FUNC10(ERROR, "cache lookup failed for operator %u", opoid);
	operform = (Form_pg_operator) FUNC1(opertup);
	FUNC0(operform->oprkind == 'b');
	oprname = FUNC3(operform->oprname);

	nspname = FUNC11(operform->oprnamespace);

	FUNC9(buf, leftop);
	if (leftoptype != operform->oprleft)
		FUNC7(buf, operform->oprleft);
	FUNC8(buf, " OPERATOR(%s.", FUNC12(nspname));
	FUNC9(buf, oprname);
	FUNC8(buf, ") %s", rightop);
	if (rightoptype != operform->oprright)
		FUNC7(buf, operform->oprright);

	FUNC5(opertup);
}