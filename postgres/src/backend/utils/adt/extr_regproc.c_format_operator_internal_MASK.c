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
struct TYPE_7__ {scalar_t__ oprright; scalar_t__ oprleft; int /*<<< orphan*/  oprnamespace; int /*<<< orphan*/  oprname; } ;
struct TYPE_6__ {char* data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  int Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_operator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEROID ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 
 char* FUNC11 (scalar_t__) ; 
 char* FUNC12 (scalar_t__) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 char* FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static char *
FUNC18(Oid operator_oid, bool force_qualify)
{
	char	   *result;
	HeapTuple	opertup;

	opertup = FUNC8(OPEROID, FUNC5(operator_oid));

	if (FUNC2(opertup))
	{
		Form_pg_operator operform = (Form_pg_operator) FUNC1(opertup);
		char	   *oprname = FUNC4(operform->oprname);
		char	   *nspname;
		StringInfoData buf;

		/* XXX no support here for bootstrap mode */
		FUNC0(!FUNC3());

		FUNC14(&buf);

		/*
		 * Would this oper be found (given the right args) by regoperatorin?
		 * If not, or if caller explicitly requests it, we need to qualify it.
		 */
		if (force_qualify || !FUNC6(operator_oid))
		{
			nspname = FUNC13(operform->oprnamespace);
			FUNC9(&buf, "%s.",
							 FUNC16(nspname));
		}

		FUNC9(&buf, "%s(", oprname);

		if (operform->oprleft)
			FUNC9(&buf, "%s,",
							 force_qualify ?
							 FUNC12(operform->oprleft) :
							 FUNC11(operform->oprleft));
		else
			FUNC10(&buf, "NONE,");

		if (operform->oprright)
			FUNC9(&buf, "%s)",
							 force_qualify ?
							 FUNC12(operform->oprright) :
							 FUNC11(operform->oprright));
		else
			FUNC10(&buf, "NONE)");

		result = buf.data;

		FUNC7(opertup);
	}
	else
	{
		/*
		 * If OID doesn't match any pg_operator entry, return it numerically
		 */
		result = (char *) FUNC15(NAMEDATALEN);
		FUNC17(result, NAMEDATALEN, "%u", operator_oid);
	}

	return result;
}