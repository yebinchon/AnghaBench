#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* TupleDesc ;
struct TYPE_12__ {TYPE_1__* prodesc; } ;
struct TYPE_11__ {int /*<<< orphan*/  atttypid; int /*<<< orphan*/  attname; scalar_t__ attgenerated; scalar_t__ attisdropped; } ;
struct TYPE_10__ {int natts; } ;
struct TYPE_9__ {int /*<<< orphan*/  trftypes; int /*<<< orphan*/  lang_oid; } ;
typedef  int /*<<< orphan*/  SV ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  HV ;
typedef  TYPE_3__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 TYPE_6__* current_call_data ; 
 int /*<<< orphan*/  dTHX ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static SV  *
FUNC21(HeapTuple tuple, TupleDesc tupdesc, bool include_generated)
{
	dTHX;
	HV		   *hv;
	int			i;

	/* since this function recurses, it could be driven to stack overflow */
	FUNC6();

	hv = FUNC14();
	FUNC12(hv, tupdesc->natts);	/* pre-grow the hash */

	for (i = 0; i < tupdesc->natts; i++)
	{
		Datum		attr;
		bool		isnull,
					typisvarlena;
		char	   *attname;
		Oid			typoutput;
		Form_pg_attribute att = FUNC5(tupdesc, i);

		if (att->attisdropped)
			continue;

		if (att->attgenerated)
		{
			/* don't include unless requested */
			if (!include_generated)
				continue;
		}

		attname = FUNC1(att->attname);
		attr = FUNC11(tuple, i + 1, tupdesc, &isnull);

		if (isnull)
		{
			/*
			 * Store (attname => undef) and move on.  Note we can't use
			 * &PL_sv_undef here; see "AVs, HVs and undefined values" in
			 * perlguts for an explanation.
			 */
			FUNC13(hv, attname, FUNC16(0));
			continue;
		}

		if (FUNC20(att->atttypid))
		{
			SV		   *sv = FUNC18(attr);

			FUNC13(hv, attname, sv);
		}
		else
		{
			SV		   *sv;
			Oid			funcid;

			if (FUNC3(FUNC9(att->atttypid)))
				sv = FUNC19(attr, att->atttypid);
			else if ((funcid = FUNC10(att->atttypid, current_call_data->prodesc->lang_oid, current_call_data->prodesc->trftypes)))
				sv = (SV *) FUNC0(FUNC2(funcid, attr));
			else
			{
				char	   *outputstr;

				/* XXX should have a way to cache these lookups */
				FUNC8(att->atttypid, &typoutput, &typisvarlena);

				outputstr = FUNC4(typoutput, attr);
				sv = FUNC7(outputstr);
				FUNC17(outputstr);
			}

			FUNC13(hv, attname, sv);
		}
	}
	return FUNC15((SV *) hv);
}