#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64 ;
struct TYPE_15__ {int /*<<< orphan*/  tupdesc; int /*<<< orphan*/ * vals; } ;
struct TYPE_14__ {int /*<<< orphan*/  result; int /*<<< orphan*/  portalname; scalar_t__ closed; } ;
struct TYPE_13__ {int /*<<< orphan*/  curr_proc; } ;
struct TYPE_12__ {struct TYPE_12__* rows; struct TYPE_12__* nrows; struct TYPE_12__* status; } ;
typedef  int /*<<< orphan*/  ResourceOwner ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  Portal ;
typedef  TYPE_1__ PLyResultObject ;
typedef  TYPE_2__ PLyExecutionContext ;
typedef  TYPE_3__ PLyCursorObject ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  volatile,int /*<<< orphan*/  volatile) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  volatile,int /*<<< orphan*/  volatile) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  volatile,int /*<<< orphan*/  volatile) ; 
 scalar_t__ PY_SSIZE_T_MAX ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  SPI_OK_FETCH ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*) ; 
 scalar_t__ SPI_processed ; 
 TYPE_4__* SPI_tuptable ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 

__attribute__((used)) static PyObject *
FUNC24(PyObject *self, PyObject *args)
{
	PLyCursorObject *cursor;
	int			count;
	PLyResultObject *ret;
	PLyExecutionContext *exec_ctx = FUNC4();
	volatile MemoryContext oldcontext;
	volatile ResourceOwner oldowner;
	Portal		portal;

	if (!FUNC13(args, "i:fetch", &count))
		return NULL;

	cursor = (PLyCursorObject *) self;

	if (cursor->closed)
	{
		FUNC5(PyExc_ValueError, "fetch from a closed cursor");
		return NULL;
	}

	portal = FUNC0(cursor->portalname);
	if (!FUNC12(portal))
	{
		FUNC5(PyExc_ValueError,
						  "iterating a cursor in an aborted subtransaction");
		return NULL;
	}

	ret = (PLyResultObject *) FUNC8();
	if (ret == NULL)
		return NULL;

	oldcontext = CurrentMemoryContext;
	oldowner = CurrentResourceOwner;

	FUNC10(oldcontext, oldowner);

	FUNC3();
	{
		FUNC19(portal, true, count);

		FUNC18(ret->status);
		ret->status = FUNC14(SPI_OK_FETCH);

		FUNC18(ret->nrows);
		ret->nrows = FUNC17(SPI_processed);

		if (SPI_processed != 0)
		{
			uint64		i;

			/*
			 * PyList_New() and PyList_SetItem() use Py_ssize_t for list size
			 * and list indices; so we cannot support a result larger than
			 * PY_SSIZE_T_MAX.
			 */
			if (SPI_processed > (uint64) PY_SSIZE_T_MAX)
				FUNC21(ERROR,
						(FUNC22(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
						 FUNC23("query result has too many rows to fit in a Python list")));

			FUNC18(ret->rows);
			ret->rows = FUNC15(SPI_processed);
			if (!ret->rows)
			{
				FUNC18(ret);
				ret = NULL;
			}
			else
			{
				FUNC7(&cursor->result, SPI_tuptable->tupdesc,
									  exec_ctx->curr_proc);

				for (i = 0; i < SPI_processed; i++)
				{
					PyObject   *row = FUNC6(&cursor->result,
														   SPI_tuptable->vals[i],
														   SPI_tuptable->tupdesc,
														   true);

					FUNC16(ret->rows, i, row);
				}
			}
		}

		FUNC20(SPI_tuptable);

		FUNC11(oldcontext, oldowner);
	}
	FUNC1();
	{
		FUNC9(oldcontext, oldowner);
		return NULL;
	}
	FUNC2();

	return (PyObject *) ret;
}