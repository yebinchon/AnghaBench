#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int oprkind; int /*<<< orphan*/  oprnamespace; int /*<<< orphan*/  oprname; } ;
struct TYPE_7__ {char* data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  int /*<<< orphan*/ * Operator ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_2__* Form_pg_operator ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEROID ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int,int) ; 

__attribute__((used)) static char *
FUNC19(Oid operid, Oid arg1, Oid arg2)
{
	StringInfoData buf;
	HeapTuple	opertup;
	Form_pg_operator operform;
	char	   *oprname;
	char	   *nspname;
	Operator	p_result;

	FUNC11(&buf);

	opertup = FUNC5(OPEROID, FUNC3(operid));
	if (!FUNC1(opertup))
		FUNC9(ERROR, "cache lookup failed for operator %u", operid);
	operform = (Form_pg_operator) FUNC0(opertup);
	oprname = FUNC2(operform->oprname);

	/*
	 * The idea here is to schema-qualify only if the parser would fail to
	 * resolve the correct operator given the unqualified op name with the
	 * specified argtypes.
	 */
	switch (operform->oprkind)
	{
		case 'b':
			p_result = FUNC15(NULL, FUNC13(FUNC14(oprname)), arg1, arg2,
							true, -1);
			break;
		case 'l':
			p_result = FUNC12(NULL, FUNC13(FUNC14(oprname)), arg2,
								 true, -1);
			break;
		case 'r':
			p_result = FUNC18(NULL, FUNC13(FUNC14(oprname)), arg1,
								  true, -1);
			break;
		default:
			FUNC9(ERROR, "unrecognized oprkind: %d", operform->oprkind);
			p_result = NULL;	/* keep compiler quiet */
			break;
	}

	if (p_result != NULL && FUNC16(p_result) == operid)
		nspname = NULL;
	else
	{
		nspname = FUNC10(operform->oprnamespace);
		FUNC6(&buf, "OPERATOR(%s.", FUNC17(nspname));
	}

	FUNC8(&buf, oprname);

	if (nspname)
		FUNC7(&buf, ')');

	if (p_result != NULL)
		FUNC4(p_result);

	FUNC4(opertup);

	return buf.data;
}