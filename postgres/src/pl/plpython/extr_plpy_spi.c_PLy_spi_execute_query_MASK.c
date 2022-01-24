#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* curr_proc; } ;
struct TYPE_4__ {int /*<<< orphan*/  fn_readonly; } ;
typedef  int /*<<< orphan*/  ResourceOwner ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_2__ PLyExecutionContext ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__* FUNC3 () ; 
 int /*<<< orphan*/  PLy_exc_spi_error ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  volatile,int /*<<< orphan*/  volatile) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  volatile,int /*<<< orphan*/  volatile) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  volatile,int /*<<< orphan*/  volatile) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  SPI_processed ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  SPI_tuptable ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static PyObject *
FUNC14(char *query, long limit)
{
	int			rv;
	volatile MemoryContext oldcontext;
	volatile ResourceOwner oldowner;
	PyObject   *ret = NULL;

	oldcontext = CurrentMemoryContext;
	oldowner = CurrentResourceOwner;

	FUNC7(oldcontext, oldowner);

	FUNC2();
	{
		PLyExecutionContext *exec_ctx = FUNC3();

		FUNC12(query, FUNC13(query), false);
		rv = FUNC10(query, exec_ctx->curr_proc->fn_readonly, limit);
		ret = FUNC5(SPI_tuptable, SPI_processed, rv);

		FUNC8(oldcontext, oldowner);
	}
	FUNC0();
	{
		FUNC6(oldcontext, oldowner);
		return NULL;
	}
	FUNC1();

	if (rv < 0)
	{
		FUNC9(ret);
		FUNC4(PLy_exc_spi_error,
						  "SPI_execute failed: %s",
						  FUNC11(rv));
		return NULL;
	}

	return ret;
}