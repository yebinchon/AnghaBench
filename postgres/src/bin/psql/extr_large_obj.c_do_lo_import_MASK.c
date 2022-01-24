#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  vars; int /*<<< orphan*/  db; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  MCXT_ALLOC_NO_OOM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC12 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,scalar_t__) ; 
 TYPE_1__ pset ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (char*,int*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int FUNC17 (char const*) ; 

bool
FUNC18(const char *filename_arg, const char *comment_arg)
{
	PGresult   *res;
	Oid			loid;
	char		oidbuf[32];
	bool		own_transaction;

	if (!FUNC15("\\lo_import", &own_transaction))
		return false;

	FUNC5();
	loid = FUNC10(pset.db, filename_arg);
	FUNC4();

	if (loid == InvalidOid)
	{
		FUNC11("%s", FUNC1(pset.db));
		return FUNC7("\\lo_import", own_transaction);
	}

	/* insert description if given */
	if (comment_arg)
	{
		char	   *cmdbuf;
		char	   *bufptr;
		size_t		slen = FUNC17(comment_arg);

		cmdbuf = FUNC12(slen * 2 + 256, MCXT_ALLOC_NO_OOM);
		if (!cmdbuf)
			return FUNC7("\\lo_import", own_transaction);
		FUNC14(cmdbuf, "COMMENT ON LARGE OBJECT %u IS '", loid);
		bufptr = cmdbuf + FUNC17(cmdbuf);
		bufptr += FUNC2(pset.db, bufptr, comment_arg, slen, NULL);
		FUNC16(bufptr, "'");

		if (!(res = FUNC3(cmdbuf)))
		{
			FUNC9(cmdbuf);
			return FUNC7("\\lo_import", own_transaction);
		}

		FUNC0(res);
		FUNC9(cmdbuf);
	}

	if (!FUNC8("\\lo_import", own_transaction))
		return false;

	FUNC13("lo_import %u", loid);

	FUNC14(oidbuf, "%u", loid);
	FUNC6(pset.vars, "LASTOID", oidbuf);

	return true;
}