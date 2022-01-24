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
typedef  int Oid ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
#define  ANYARRAYOID 132 
#define  ANYELEMENTOID 131 
#define  ANYENUMOID 130 
#define  ANYNONARRAYOID 129 
#define  ANYRANGEOID 128 
 int InvalidOid ; 
 scalar_t__ FUNC0 (int) ; 
 char PROARGMODE_IN ; 
 char PROARGMODE_OUT ; 
 char PROARGMODE_TABLE ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int const,int,int const) ; 

bool
FUNC3(int numargs, Oid *argtypes, char *argmodes,
							 Node *call_expr)
{
	bool		have_anyelement_result = false;
	bool		have_anyarray_result = false;
	bool		have_anyrange_result = false;
	Oid			anyelement_type = InvalidOid;
	Oid			anyarray_type = InvalidOid;
	Oid			anyrange_type = InvalidOid;
	int			inargno;
	int			i;

	/* First pass: resolve polymorphic inputs, check for outputs */
	inargno = 0;
	for (i = 0; i < numargs; i++)
	{
		char		argmode = argmodes ? argmodes[i] : PROARGMODE_IN;

		switch (argtypes[i])
		{
			case ANYELEMENTOID:
			case ANYNONARRAYOID:
			case ANYENUMOID:
				if (argmode == PROARGMODE_OUT || argmode == PROARGMODE_TABLE)
					have_anyelement_result = true;
				else
				{
					if (!FUNC0(anyelement_type))
					{
						anyelement_type = FUNC1(call_expr,
																inargno);
						if (!FUNC0(anyelement_type))
							return false;
					}
					argtypes[i] = anyelement_type;
				}
				break;
			case ANYARRAYOID:
				if (argmode == PROARGMODE_OUT || argmode == PROARGMODE_TABLE)
					have_anyarray_result = true;
				else
				{
					if (!FUNC0(anyarray_type))
					{
						anyarray_type = FUNC1(call_expr,
															  inargno);
						if (!FUNC0(anyarray_type))
							return false;
					}
					argtypes[i] = anyarray_type;
				}
				break;
			case ANYRANGEOID:
				if (argmode == PROARGMODE_OUT || argmode == PROARGMODE_TABLE)
					have_anyrange_result = true;
				else
				{
					if (!FUNC0(anyrange_type))
					{
						anyrange_type = FUNC1(call_expr,
															  inargno);
						if (!FUNC0(anyrange_type))
							return false;
					}
					argtypes[i] = anyrange_type;
				}
				break;
			default:
				break;
		}
		if (argmode != PROARGMODE_OUT && argmode != PROARGMODE_TABLE)
			inargno++;
	}

	/* Done? */
	if (!have_anyelement_result && !have_anyarray_result &&
		!have_anyrange_result)
		return true;

	/* If no input polymorphics, parser messed up */
	if (!FUNC0(anyelement_type) && !FUNC0(anyarray_type) &&
		!FUNC0(anyrange_type))
		return false;

	/* If needed, deduce one polymorphic type from others */
	if (have_anyelement_result && !FUNC0(anyelement_type))
	{
		if (FUNC0(anyarray_type))
			anyelement_type = FUNC2(ANYELEMENTOID,
												   anyarray_type,
												   ANYARRAYOID);
		if (FUNC0(anyrange_type))
		{
			Oid			subtype = FUNC2(ANYELEMENTOID,
													   anyrange_type,
													   ANYRANGEOID);

			/* check for inconsistent array and range results */
			if (FUNC0(anyelement_type) && anyelement_type != subtype)
				return false;
			anyelement_type = subtype;
		}
	}

	if (have_anyarray_result && !FUNC0(anyarray_type))
		anyarray_type = FUNC2(ANYARRAYOID,
											 anyelement_type,
											 ANYELEMENTOID);

	/*
	 * We can't deduce a range type from other polymorphic inputs, because
	 * there may be multiple range types for the same subtype.
	 */
	if (have_anyrange_result && !FUNC0(anyrange_type))
		return false;

	/* XXX do we need to enforce ANYNONARRAY or ANYENUM here?  I think not */

	/* And finally replace the output column types as needed */
	for (i = 0; i < numargs; i++)
	{
		switch (argtypes[i])
		{
			case ANYELEMENTOID:
			case ANYNONARRAYOID:
			case ANYENUMOID:
				argtypes[i] = anyelement_type;
				break;
			case ANYARRAYOID:
				argtypes[i] = anyarray_type;
				break;
			case ANYRANGEOID:
				argtypes[i] = anyrange_type;
				break;
			default:
				break;
		}
	}

	return true;
}