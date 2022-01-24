#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sqlstate; int /*<<< orphan*/  classname; int /*<<< orphan*/ * name; } ;
struct TYPE_4__ {int /*<<< orphan*/ * exc; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PLyExceptionEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PLy_spi_exceptions ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_3__* exception_map ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(PyObject *mod, PyObject *base)
{
	int			i;

	for (i = 0; exception_map[i].name != NULL; i++)
	{
		bool		found;
		PyObject   *exc;
		PLyExceptionEntry *entry;
		PyObject   *sqlstate;
		PyObject   *dict = FUNC3();

		if (dict == NULL)
			FUNC2(ERROR, NULL);

		sqlstate = FUNC5(FUNC8(exception_map[i].sqlstate));
		if (sqlstate == NULL)
			FUNC2(ERROR, "could not generate SPI exceptions");

		FUNC4(dict, "sqlstate", sqlstate);
		FUNC6(sqlstate);

		exc = FUNC1(exception_map[i].name, base, dict,
								   exception_map[i].classname, mod);

		entry = FUNC7(PLy_spi_exceptions, &exception_map[i].sqlstate,
							HASH_ENTER, &found);
		FUNC0(!found);
		entry->exc = exc;
	}
}