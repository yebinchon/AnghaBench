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
struct prepared_statement {int dummy; } ;
struct connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECPG_COMPAT_PGSQL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,struct connection*,struct prepared_statement*,struct prepared_statement*) ; 
 struct prepared_statement* FUNC1 (char const*,struct connection*,struct prepared_statement**) ; 
 struct connection* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*,char const*,int) ; 
 int FUNC4 (int,struct connection*,char const*,char const*) ; 

bool
FUNC5(int lineno, const char *connection_name, const bool questionmarks,
			const char *name, const char *variable)
{
	struct connection *con;
	struct prepared_statement *this,
			   *prev;

	(void) questionmarks;		/* quiet the compiler */

	con = FUNC2(connection_name);
	if (!FUNC3(con, connection_name, lineno))
		return false;

	/* check if we already have prepared this statement */
	this = FUNC1(name, con, &prev);
	if (this && !FUNC0(lineno, ECPG_COMPAT_PGSQL, con, prev, this))
		return false;

	return FUNC4(lineno, con, name, variable);
}