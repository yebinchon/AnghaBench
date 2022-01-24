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
struct sqlvar_compat {char* sqlname; int /*<<< orphan*/  sqltypelen; int /*<<< orphan*/  sqlxid; int /*<<< orphan*/  sqltype; } ;
struct sqlda_compat {int sqld; long desc_occ; struct sqlvar_compat* sqlvar; } ;
typedef  enum COMPAT_MODE { ____Placeholder_COMPAT_MODE } COMPAT_MODE ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (long,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sqlda_compat*,int /*<<< orphan*/ ,long) ; 
 long FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*) ; 

struct sqlda_compat *
FUNC11(int line, PGresult *res, int row, enum COMPAT_MODE compat)
{
	struct sqlda_compat *sqlda;
	struct sqlvar_compat *sqlvar;
	char	   *fname;
	long		size;
	int			sqld;
	int			i;

	size = FUNC7(res, row, compat);
	sqlda = (struct sqlda_compat *) FUNC4(size, line);
	if (!sqlda)
		return NULL;

	FUNC6(sqlda, 0, size);
	sqlvar = (struct sqlvar_compat *) (sqlda + 1);
	sqld = FUNC3(res);
	fname = (char *) (sqlvar + sqld);

	sqlda->sqld = sqld;
	FUNC5("ecpg_build_compat_sqlda on line %d sqld = %d\n", line, sqld);
	sqlda->desc_occ = size;		/* cheat here, keep the full allocated size */
	sqlda->sqlvar = sqlvar;

	for (i = 0; i < sqlda->sqld; i++)
	{
		sqlda->sqlvar[i].sqltype = FUNC8(FUNC2(res, i), compat);
		FUNC9(fname, FUNC0(res, i));
		sqlda->sqlvar[i].sqlname = fname;
		fname += FUNC10(sqlda->sqlvar[i].sqlname) + 1;

		/*
		 * this is reserved for future use, so we leave it empty for the time
		 * being
		 */
		/* sqlda->sqlvar[i].sqlformat = (char *) (long) PQfformat(res, i); */
		sqlda->sqlvar[i].sqlxid = FUNC2(res, i);
		sqlda->sqlvar[i].sqltypelen = FUNC1(res, i);
	}

	return sqlda;
}