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
struct stat {int /*<<< orphan*/  st_mtime; scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  nulls ;
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_8__ {char const* location; int /*<<< orphan*/  dirdesc; } ;
typedef  TYPE_1__ directory_fctx ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_9__ {int /*<<< orphan*/  tuple_desc; TYPE_1__* user_fctx; int /*<<< orphan*/  multi_call_memory_ctx; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  TYPE_2__ FuncCallContext ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INT8OID ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct dirent* FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_2__* FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 TYPE_2__* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TEXTOID ; 
 int /*<<< orphan*/  TIMESTAMPTZOID ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (char*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC21 (int*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC22 (int) ; 
 char const* FUNC23 (char const*) ; 
 int /*<<< orphan*/  FUNC24 (char*,int,char*,char const*,char*) ; 
 scalar_t__ FUNC25 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Datum
FUNC27(FunctionCallInfo fcinfo, const char *dir, bool missing_ok)
{
	FuncCallContext *funcctx;
	struct dirent *de;
	directory_fctx *fctx;

	if (FUNC10())
	{
		MemoryContext oldcontext;
		TupleDesc	tupdesc;

		funcctx = FUNC9();
		oldcontext = FUNC7(funcctx->multi_call_memory_ctx);

		fctx = FUNC22(sizeof(directory_fctx));

		tupdesc = FUNC3(3);
		FUNC16(tupdesc, (AttrNumber) 1, "name",
						   TEXTOID, -1, 0);
		FUNC16(tupdesc, (AttrNumber) 2, "size",
						   INT8OID, -1, 0);
		FUNC16(tupdesc, (AttrNumber) 3, "modification",
						   TIMESTAMPTZOID, -1, 0);
		funcctx->tuple_desc = FUNC1(tupdesc);

		fctx->location = FUNC23(dir);
		fctx->dirdesc = FUNC0(fctx->location);

		if (!fctx->dirdesc)
		{
			if (missing_ok && errno == ENOENT)
			{
				FUNC7(oldcontext);
				FUNC12(funcctx);
			}
			else
				FUNC17(ERROR,
						(FUNC18(),
						 FUNC19("could not open directory \"%s\": %m",
								fctx->location)));
		}

		funcctx->user_fctx = fctx;
		FUNC7(oldcontext);
	}

	funcctx = FUNC11();
	fctx = (directory_fctx *) funcctx->user_fctx;

	while ((de = FUNC8(fctx->dirdesc, fctx->location)) != NULL)
	{
		Datum		values[3];
		bool		nulls[3];
		char		path[MAXPGPATH * 2];
		struct stat attrib;
		HeapTuple	tuple;

		/* Skip hidden files */
		if (de->d_name[0] == '.')
			continue;

		/* Get the file info */
		FUNC24(path, sizeof(path), "%s/%s", fctx->location, de->d_name);
		if (FUNC25(path, &attrib) < 0)
			FUNC17(ERROR,
					(FUNC18(),
					 FUNC19("could not stat directory \"%s\": %m", dir)));

		/* Ignore anything but regular files */
		if (!FUNC14(attrib.st_mode))
			continue;

		values[0] = FUNC2(de->d_name);
		values[1] = FUNC6((int64) attrib.st_size);
		values[2] = FUNC15(FUNC26(attrib.st_mtime));
		FUNC21(nulls, 0, sizeof(nulls));

		tuple = FUNC20(funcctx->tuple_desc, values, nulls);
		FUNC13(funcctx, FUNC5(tuple));
	}

	FUNC4(fctx->dirdesc);
	FUNC12(funcctx);
}