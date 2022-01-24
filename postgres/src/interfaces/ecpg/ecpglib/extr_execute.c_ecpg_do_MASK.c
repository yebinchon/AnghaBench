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
typedef  int /*<<< orphan*/  va_list ;
struct statement {int dummy; } ;
typedef  enum ECPG_statement_type { ____Placeholder_ECPG_statement_type } ECPG_statement_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct statement*) ; 
 int /*<<< orphan*/  FUNC1 (struct statement*) ; 
 int /*<<< orphan*/  FUNC2 (struct statement*) ; 
 int /*<<< orphan*/  FUNC3 (int const,int const,int const,char const*,int const,int,char const*,int /*<<< orphan*/ ,struct statement**) ; 
 int /*<<< orphan*/  FUNC4 (struct statement*) ; 
 int /*<<< orphan*/  FUNC5 (struct statement*,int) ; 

bool
FUNC6(const int lineno, const int compat, const int force_indicator, const char *connection_name, const bool questionmarks, const int st, const char *query, va_list args)
{
	struct statement *stmt = NULL;

	if (!FUNC3(lineno, compat, force_indicator, connection_name,
						  questionmarks, (enum ECPG_statement_type) st,
						  query, args, &stmt))
		goto fail;

	if (!FUNC1(stmt))
		goto fail;

	if (!FUNC0(stmt))
		goto fail;

	if (!FUNC4(stmt))
		goto fail;

	if (!FUNC5(stmt, true))
		goto fail;

	FUNC2(stmt);
	return true;

fail:
	FUNC2(stmt);
	return false;
}