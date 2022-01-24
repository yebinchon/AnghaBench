#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sqlvar_struct {int dummy; } ;
struct sqlda_struct {int sqld; int sqln; int sqldabc; TYPE_2__* sqlvar; int /*<<< orphan*/  sqldaid; } ;
typedef  enum COMPAT_MODE { ____Placeholder_COMPAT_MODE } COMPAT_MODE ;
struct TYPE_3__ {int /*<<< orphan*/  data; int /*<<< orphan*/  length; } ;
struct TYPE_4__ {TYPE_1__ sqlname; int /*<<< orphan*/  sqltype; } ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (long,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sqlda_struct*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 long FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

struct sqlda_struct *
FUNC11(int line, PGresult *res, int row, enum COMPAT_MODE compat)
{
	struct sqlda_struct *sqlda;
	long		size;
	int			i;

	size = FUNC8(res, row, compat);
	sqlda = (struct sqlda_struct *) FUNC3(size, line);
	if (!sqlda)
		return NULL;

	FUNC5(sqlda, 0, size);

	FUNC6(sqlda->sqldaid, "SQLDA  ");
	sqlda->sqld = sqlda->sqln = FUNC2(res);
	FUNC4("ecpg_build_native_sqlda on line %d sqld = %d\n", line, sqlda->sqld);
	sqlda->sqldabc = sizeof(struct sqlda_struct) + (sqlda->sqld - 1) * sizeof(struct sqlvar_struct);

	for (i = 0; i < sqlda->sqld; i++)
	{
		char	   *fname;

		sqlda->sqlvar[i].sqltype = FUNC7(FUNC1(res, i), compat);
		fname = FUNC0(res, i);
		sqlda->sqlvar[i].sqlname.length = FUNC10(fname);
		FUNC9(sqlda->sqlvar[i].sqlname.data, fname);
	}

	return sqlda;
}