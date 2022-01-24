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
typedef  int /*<<< orphan*/  int16 ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int IndexAMProperty ;

/* Variables and functions */
 int /*<<< orphan*/  AMPROCNUM ; 
#define  AMPROP_DISTANCE_ORDERABLE 129 
#define  AMPROP_RETURNABLE 128 
 int /*<<< orphan*/  GIST_COMPRESS_PROC ; 
 int /*<<< orphan*/  GIST_DISTANCE_PROC ; 
 int /*<<< orphan*/  GIST_FETCH_PROC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool
FUNC6(Oid index_oid, int attno,
			 IndexAMProperty prop, const char *propname,
			 bool *res, bool *isnull)
{
	Oid			opclass,
				opfamily,
				opcintype;
	int16		procno;

	/* Only answer column-level inquiries */
	if (attno == 0)
		return false;

	/*
	 * Currently, GiST distance-ordered scans require that there be a distance
	 * function in the opclass with the default types (i.e. the one loaded
	 * into the relcache entry, see initGISTstate).  So we assume that if such
	 * a function exists, then there's a reason for it (rather than grubbing
	 * through all the opfamily's operators to find an ordered one).
	 *
	 * Essentially the same code can test whether we support returning the
	 * column data, since that's true if the opclass provides a fetch proc.
	 */

	switch (prop)
	{
		case AMPROP_DISTANCE_ORDERABLE:
			procno = GIST_DISTANCE_PROC;
			break;
		case AMPROP_RETURNABLE:
			procno = GIST_FETCH_PROC;
			break;
		default:
			return false;
	}

	/* First we need to know the column's opclass. */
	opclass = FUNC4(index_oid, attno);
	if (!FUNC2(opclass))
	{
		*isnull = true;
		return true;
	}

	/* Now look up the opclass family and input datatype. */
	if (!FUNC5(opclass, &opfamily, &opcintype))
	{
		*isnull = true;
		return true;
	}

	/* And now we can check whether the function is provided. */

	*res = FUNC3(AMPROCNUM,
								 FUNC1(opfamily),
								 FUNC1(opcintype),
								 FUNC1(opcintype),
								 FUNC0(procno));

	/*
	 * Special case: even without a fetch function, AMPROP_RETURNABLE is true
	 * if the opclass has no compress function.
	 */
	if (prop == AMPROP_RETURNABLE && !*res)
	{
		*res = !FUNC3(AMPROCNUM,
									  FUNC1(opfamily),
									  FUNC1(opcintype),
									  FUNC1(opcintype),
									  FUNC0(GIST_COMPRESS_PROC));
	}

	*isnull = false;

	return true;
}