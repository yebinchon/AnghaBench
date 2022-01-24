#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int*,char**,char**,char**,int*,char**,char**,char**,char**,char**) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(PyObject *exc, int *sqlerrcode, char **detail,
					   char **hint, char **query, int *position,
					   char **schema_name, char **table_name,
					   char **column_name,
					   char **datatype_name, char **constraint_name)
{
	PyObject   *spidata;

	spidata = FUNC2(exc, "spidata");

	if (spidata != NULL)
	{
		FUNC1(spidata, "izzzizzzzz",
						 sqlerrcode, detail, hint, query, position,
						 schema_name, table_name, column_name,
						 datatype_name, constraint_name);
	}
	else
	{
		/*
		 * If there's no spidata, at least set the sqlerrcode. This can happen
		 * if someone explicitly raises a SPI exception from Python code.
		 */
		FUNC0(exc, sqlerrcode);
	}

	FUNC3(spidata);
}