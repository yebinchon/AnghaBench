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
struct connection {scalar_t__ prep_stmts; } ;
typedef  enum COMPAT_MODE { ____Placeholder_COMPAT_MODE } COMPAT_MODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,struct connection*,int /*<<< orphan*/ *,scalar_t__) ; 

bool
FUNC1(int lineno, enum COMPAT_MODE c, struct connection *con)
{
	/* deallocate all prepared statements */
	while (con->prep_stmts)
	{
		if (!FUNC0(lineno, c, con, NULL, con->prep_stmts))
			return false;
	}

	return true;
}