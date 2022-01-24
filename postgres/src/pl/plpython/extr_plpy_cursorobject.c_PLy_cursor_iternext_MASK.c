#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  tupdesc; int /*<<< orphan*/ * vals; } ;
struct TYPE_7__ {int /*<<< orphan*/  result; int /*<<< orphan*/  portalname; scalar_t__ closed; } ;
struct TYPE_6__ {int /*<<< orphan*/  curr_proc; } ;
typedef  int /*<<< orphan*/  ResourceOwner ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  Portal ;
typedef  TYPE_1__ PLyExecutionContext ;
typedef  TYPE_2__ PLyCursorObject ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  volatile,int /*<<< orphan*/  volatile) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  volatile,int /*<<< orphan*/  volatile) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  volatile,int /*<<< orphan*/  volatile) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_StopIteration ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 scalar_t__ SPI_processed ; 
 TYPE_3__* SPI_tuptable ; 

__attribute__((used)) static PyObject *
FUNC15(PyObject *self)
{
	PLyCursorObject *cursor;
	PyObject   *ret;
	PLyExecutionContext *exec_ctx = FUNC4();
	volatile MemoryContext oldcontext;
	volatile ResourceOwner oldowner;
	Portal		portal;

	cursor = (PLyCursorObject *) self;

	if (cursor->closed)
	{
		FUNC5(PyExc_ValueError, "iterating a closed cursor");
		return NULL;
	}

	portal = FUNC0(cursor->portalname);
	if (!FUNC11(portal))
	{
		FUNC5(PyExc_ValueError,
						  "iterating a cursor in an aborted subtransaction");
		return NULL;
	}

	oldcontext = CurrentMemoryContext;
	oldowner = CurrentResourceOwner;

	FUNC9(oldcontext, oldowner);

	FUNC3();
	{
		FUNC13(portal, true, 1);
		if (SPI_processed == 0)
		{
			FUNC12(PyExc_StopIteration);
			ret = NULL;
		}
		else
		{
			FUNC7(&cursor->result, SPI_tuptable->tupdesc,
								  exec_ctx->curr_proc);

			ret = FUNC6(&cursor->result, SPI_tuptable->vals[0],
									   SPI_tuptable->tupdesc, true);
		}

		FUNC14(SPI_tuptable);

		FUNC10(oldcontext, oldowner);
	}
	FUNC1();
	{
		FUNC8(oldcontext, oldowner);
		return NULL;
	}
	FUNC2();

	return ret;
}