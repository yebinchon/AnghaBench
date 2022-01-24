#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct pg_tm {int dummy; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  fsec_t ;
struct TYPE_8__ {int /*<<< orphan*/  dirdesc; int /*<<< orphan*/  location; } ;
typedef  TYPE_1__ directory_fctx ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_9__ {int /*<<< orphan*/  attinmeta; TYPE_1__* user_fctx; int /*<<< orphan*/  multi_call_memory_ctx; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  TYPE_2__ FuncCallContext ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (char**,int*,int,int*,struct pg_tm*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Log_directory ; 
 char* Log_filename ; 
 int MAXDATEFIELDS ; 
 int /*<<< orphan*/  MAXDATELEN ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,char*,int /*<<< orphan*/ ,char**,int*,int,int*) ; 
 struct dirent* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 TYPE_2__* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TEXTOID ; 
 int /*<<< orphan*/  TIMESTAMPOID ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 TYPE_1__* FUNC20 (int) ; 
 char* FUNC21 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (char*,char*) ; 
 int /*<<< orphan*/  FUNC24 (char*,char*) ; 
 int FUNC25 (char*) ; 
 scalar_t__ FUNC26 (char*,char*,int) ; 

__attribute__((used)) static Datum
FUNC27(FunctionCallInfo fcinfo)
{
	FuncCallContext *funcctx;
	struct dirent *de;
	directory_fctx *fctx;

	if (FUNC23(Log_filename, "postgresql-%Y-%m-%d_%H%M%S.log") != 0)
		FUNC16(ERROR,
				(FUNC17(ERRCODE_INVALID_PARAMETER_VALUE),
				 (FUNC19("the log_filename parameter must equal 'postgresql-%%Y-%%m-%%d_%%H%%M%%S.log'"))));

	if (FUNC10())
	{
		MemoryContext oldcontext;
		TupleDesc	tupdesc;

		funcctx = FUNC9();
		oldcontext = FUNC6(funcctx->multi_call_memory_ctx);

		fctx = FUNC20(sizeof(directory_fctx));

		tupdesc = FUNC2(2);
		FUNC15(tupdesc, (AttrNumber) 1, "starttime",
						   TIMESTAMPOID, -1, 0);
		FUNC15(tupdesc, (AttrNumber) 2, "filename",
						   TEXTOID, -1, 0);

		funcctx->attinmeta = FUNC14(tupdesc);

		fctx->location = FUNC22(Log_directory);
		fctx->dirdesc = FUNC0(fctx->location);

		if (!fctx->dirdesc)
			FUNC16(ERROR,
					(FUNC18(),
					 FUNC19("could not open directory \"%s\": %m",
							fctx->location)));

		funcctx->user_fctx = fctx;
		FUNC6(oldcontext);
	}

	funcctx = FUNC11();
	fctx = (directory_fctx *) funcctx->user_fctx;

	while ((de = FUNC8(fctx->dirdesc, fctx->location)) != NULL)
	{
		char	   *values[2];
		HeapTuple	tuple;
		char		timestampbuf[32];
		char	   *field[MAXDATEFIELDS];
		char		lowstr[MAXDATELEN + 1];
		int			dtype;
		int			nf,
					ftype[MAXDATEFIELDS];
		fsec_t		fsec;
		int			tz = 0;
		struct pg_tm date;

		/*
		 * Default format: postgresql-YYYY-MM-DD_HHMMSS.log
		 */
		if (FUNC25(de->d_name) != 32
			|| FUNC26(de->d_name, "postgresql-", 11) != 0
			|| de->d_name[21] != '_'
			|| FUNC23(de->d_name + 28, ".log") != 0)
			continue;

		/* extract timestamp portion of filename */
		FUNC24(timestampbuf, de->d_name + 11);
		timestampbuf[17] = '\0';

		/* parse and decode expected timestamp to verify it's OK format */
		if (FUNC7(timestampbuf, lowstr, MAXDATELEN, field, ftype, MAXDATEFIELDS, &nf))
			continue;

		if (FUNC3(field, ftype, nf, &dtype, &date, &fsec, &tz))
			continue;

		/* Seems the timestamp is OK; prepare and return tuple */

		values[0] = timestampbuf;
		values[1] = FUNC21("%s/%s", fctx->location, de->d_name);

		tuple = FUNC1(funcctx->attinmeta, values);

		FUNC13(funcctx, FUNC5(tuple));
	}

	FUNC4(fctx->dirdesc);
	FUNC12(funcctx);
}