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
struct TYPE_8__ {int /*<<< orphan*/  sqlerrcode; } ;
struct TYPE_7__ {int /*<<< orphan*/ * exc; } ;
typedef  int /*<<< orphan*/  ResourceOwner ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PLyExceptionEntry ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_2__ ErrorData ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  HASH_FIND ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * PLy_exc_spi_error ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  PLy_spi_exceptions ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC7(MemoryContext oldcontext, ResourceOwner oldowner)
{
	ErrorData  *edata;
	PLyExceptionEntry *entry;
	PyObject   *exc;

	/* Save error info */
	FUNC3(oldcontext);
	edata = FUNC0();
	FUNC1();

	/* Abort the inner transaction */
	FUNC5();
	FUNC3(oldcontext);
	CurrentResourceOwner = oldowner;

	/* Look up the correct exception */
	entry = FUNC6(PLy_spi_exceptions, &(edata->sqlerrcode),
						HASH_FIND, NULL);

	/*
	 * This could be a custom error code, if that's the case fallback to
	 * SPIError
	 */
	exc = entry ? entry->exc : PLy_exc_spi_error;
	/* Make Python raise the exception */
	FUNC4(exc, edata);
	FUNC2(edata);
}