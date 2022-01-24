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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char**) ; 

__attribute__((used)) static void
FUNC2(PyObject *exc, int *sqlerrcode, char **detail, char **hint,
				   char **schema_name, char **table_name, char **column_name,
				   char **datatype_name, char **constraint_name)
{
	FUNC0(exc, sqlerrcode);
	FUNC1(exc, "detail", detail);
	FUNC1(exc, "hint", hint);
	FUNC1(exc, "schema_name", schema_name);
	FUNC1(exc, "table_name", table_name);
	FUNC1(exc, "column_name", column_name);
	FUNC1(exc, "datatype_name", datatype_name);
	FUNC1(exc, "constraint_name", constraint_name);
}