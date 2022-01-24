#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int* values; } ;
struct TYPE_10__ {int pronargs; TYPE_1__ proargtypes; int /*<<< orphan*/  pronamespace; int /*<<< orphan*/  proname; } ;
struct TYPE_9__ {char* data; } ;
typedef  TYPE_2__ StringInfoData ;
typedef  int Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_proc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static char *
FUNC19(Oid procedure_oid, bool force_qualify)
{
	char	   *result;
	HeapTuple	proctup;

	proctup = FUNC8(PROCOID, FUNC6(procedure_oid));

	if (FUNC3(proctup))
	{
		Form_pg_proc procform = (Form_pg_proc) FUNC2(proctup);
		char	   *proname = FUNC5(procform->proname);
		int			nargs = procform->pronargs;
		int			i;
		char	   *nspname;
		StringInfoData buf;

		/* XXX no support here for bootstrap mode */
		FUNC0(!FUNC4());

		FUNC15(&buf);

		/*
		 * Would this proc be found (given the right args) by regprocedurein?
		 * If not, or if caller requests it, we need to qualify it.
		 */
		if (!force_qualify && FUNC1(procedure_oid))
			nspname = NULL;
		else
			nspname = FUNC14(procform->pronamespace);

		FUNC9(&buf, "%s(",
						 FUNC17(nspname, proname));
		for (i = 0; i < nargs; i++)
		{
			Oid			thisargtype = procform->proargtypes.values[i];

			if (i > 0)
				FUNC10(&buf, ',');
			FUNC11(&buf,
								   force_qualify ?
								   FUNC13(thisargtype) :
								   FUNC12(thisargtype));
		}
		FUNC10(&buf, ')');

		result = buf.data;

		FUNC7(proctup);
	}
	else
	{
		/* If OID doesn't match any pg_proc entry, return it numerically */
		result = (char *) FUNC16(NAMEDATALEN);
		FUNC18(result, NAMEDATALEN, "%u", procedure_oid);
	}

	return result;
}