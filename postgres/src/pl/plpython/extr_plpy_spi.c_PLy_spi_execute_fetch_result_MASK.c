#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64 ;
struct TYPE_13__ {int /*<<< orphan*/  curr_proc; } ;
struct TYPE_12__ {struct TYPE_12__* rows; int /*<<< orphan*/  tupdesc; struct TYPE_12__* nrows; struct TYPE_12__* status; } ;
struct TYPE_11__ {int /*<<< orphan*/  tupdesc; int /*<<< orphan*/ * vals; } ;
typedef  TYPE_1__ SPITupleTable ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_2__ PLyResultObject ;
typedef  TYPE_3__ PLyExecutionContext ;
typedef  int /*<<< orphan*/  PLyDatumToOb ;
typedef  int /*<<< orphan*/  volatile MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  volatile FUNC0 (int /*<<< orphan*/  volatile,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  volatile CurrentMemoryContext ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  volatile) ; 
 int /*<<< orphan*/  volatile FUNC3 (int /*<<< orphan*/  volatile) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_3__* FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  volatile,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ PY_SSIZE_T_MAX ; 
 TYPE_2__* FUNC13 (int) ; 
 TYPE_2__* FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 
 void* FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  RECORDOID ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  volatile TopMemoryContext ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 

__attribute__((used)) static PyObject *
FUNC22(SPITupleTable *tuptable, uint64 rows, int status)
{
	PLyResultObject *result;
	PLyExecutionContext *exec_ctx = FUNC8();
	volatile MemoryContext oldcontext;

	result = (PLyResultObject *) FUNC12();
	if (!result)
	{
		FUNC18(tuptable);
		return NULL;
	}
	FUNC17(result->status);
	result->status = FUNC13(status);

	if (status > 0 && tuptable == NULL)
	{
		FUNC17(result->nrows);
		result->nrows = FUNC16(rows);
	}
	else if (status > 0 && tuptable != NULL)
	{
		PLyDatumToOb ininfo;
		MemoryContext cxt;

		FUNC17(result->nrows);
		result->nrows = FUNC16(rows);

		cxt = FUNC0(CurrentMemoryContext,
									"PL/Python temp context",
									ALLOCSET_DEFAULT_SIZES);

		/* Initialize for converting result tuples to Python */
		FUNC10(&ininfo, cxt, RECORDOID, -1,
							 exec_ctx->curr_proc);

		oldcontext = CurrentMemoryContext;
		FUNC7();
		{
			MemoryContext oldcontext2;

			if (rows)
			{
				uint64		i;

				/*
				 * PyList_New() and PyList_SetItem() use Py_ssize_t for list
				 * size and list indices; so we cannot support a result larger
				 * than PY_SSIZE_T_MAX.
				 */
				if (rows > (uint64) PY_SSIZE_T_MAX)
					FUNC19(ERROR,
							(FUNC20(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
							 FUNC21("query result has too many rows to fit in a Python list")));

				FUNC17(result->rows);
				result->rows = FUNC14(rows);
				if (result->rows)
				{
					FUNC11(&ininfo, tuptable->tupdesc,
										  exec_ctx->curr_proc);

					for (i = 0; i < rows; i++)
					{
						PyObject   *row = FUNC9(&ininfo,
															   tuptable->vals[i],
															   tuptable->tupdesc,
															   true);

						FUNC15(result->rows, i, row);
					}
				}
			}

			/*
			 * Save tuple descriptor for later use by result set metadata
			 * functions.  Save it in TopMemoryContext so that it survives
			 * outside of an SPI context.  We trust that PLy_result_dealloc()
			 * will clean it up when the time is right.  (Do this as late as
			 * possible, to minimize the number of ways the tupdesc could get
			 * leaked due to errors.)
			 */
			oldcontext2 = FUNC3(TopMemoryContext);
			result->tupdesc = FUNC1(tuptable->tupdesc);
			FUNC3(oldcontext2);
		}
		FUNC4();
		{
			FUNC3(oldcontext);
			FUNC2(cxt);
			FUNC17(result);
			FUNC6();
		}
		FUNC5();

		FUNC2(cxt);
		FUNC18(tuptable);

		/* in case PyList_New() failed above */
		if (!result->rows)
		{
			FUNC17(result);
			result = NULL;
		}
	}

	return (PyObject *) result;
}