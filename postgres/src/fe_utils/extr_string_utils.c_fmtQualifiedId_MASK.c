#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char const* data; } ;
typedef  TYPE_1__* PQExpBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 char const* FUNC4 (char const*) ; 
 TYPE_1__* FUNC5 () ; 

const char *
FUNC6(const char *schema, const char *id)
{
	PQExpBuffer id_return;
	PQExpBuffer lcl_pqexp = FUNC2();

	/* Some callers might fail to provide a schema name */
	if (schema && *schema)
	{
		FUNC0(lcl_pqexp, "%s.", FUNC4(schema));
	}
	FUNC1(lcl_pqexp, FUNC4(id));

	id_return = FUNC5();

	FUNC1(id_return, lcl_pqexp->data);
	FUNC3(lcl_pqexp);

	return id_return->data;
}