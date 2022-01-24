#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int dim1; int* values; } ;
typedef  TYPE_1__ oidvector ;
typedef  TYPE_2__* TupleDesc ;
struct TYPE_12__ {int atttypid; int /*<<< orphan*/  attname; } ;
struct TYPE_11__ {int natts; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_3__* Form_pg_attribute ;

/* Variables and functions */
#define  ANYARRAYOID 132 
#define  ANYELEMENTOID 131 
#define  ANYENUMOID 130 
#define  ANYNONARRAYOID 129 
#define  ANYRANGEOID 128 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int const,scalar_t__,int const) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC11(TupleDesc tupdesc, oidvector *declared_args,
							Node *call_expr)
{
	int			natts = tupdesc->natts;
	int			nargs = declared_args->dim1;
	bool		have_anyelement_result = false;
	bool		have_anyarray_result = false;
	bool		have_anyrange_result = false;
	bool		have_anynonarray = false;
	bool		have_anyenum = false;
	Oid			anyelement_type = InvalidOid;
	Oid			anyarray_type = InvalidOid;
	Oid			anyrange_type = InvalidOid;
	Oid			anycollation = InvalidOid;
	int			i;

	/* See if there are any polymorphic outputs; quick out if not */
	for (i = 0; i < natts; i++)
	{
		switch (FUNC2(tupdesc, i)->atttypid)
		{
			case ANYELEMENTOID:
				have_anyelement_result = true;
				break;
			case ANYARRAYOID:
				have_anyarray_result = true;
				break;
			case ANYNONARRAYOID:
				have_anyelement_result = true;
				have_anynonarray = true;
				break;
			case ANYENUMOID:
				have_anyelement_result = true;
				have_anyenum = true;
				break;
			case ANYRANGEOID:
				have_anyrange_result = true;
				break;
			default:
				break;
		}
	}
	if (!have_anyelement_result && !have_anyarray_result &&
		!have_anyrange_result)
		return true;

	/*
	 * Otherwise, extract actual datatype(s) from input arguments.  (We assume
	 * the parser already validated consistency of the arguments.)
	 */
	if (!call_expr)
		return false;			/* no hope */

	for (i = 0; i < nargs; i++)
	{
		switch (declared_args->values[i])
		{
			case ANYELEMENTOID:
			case ANYNONARRAYOID:
			case ANYENUMOID:
				if (!FUNC1(anyelement_type))
					anyelement_type = FUNC6(call_expr, i);
				break;
			case ANYARRAYOID:
				if (!FUNC1(anyarray_type))
					anyarray_type = FUNC6(call_expr, i);
				break;
			case ANYRANGEOID:
				if (!FUNC1(anyrange_type))
					anyrange_type = FUNC6(call_expr, i);
				break;
			default:
				break;
		}
	}

	/* If nothing found, parser messed up */
	if (!FUNC1(anyelement_type) && !FUNC1(anyarray_type) &&
		!FUNC1(anyrange_type))
		return false;

	/* If needed, deduce one polymorphic type from others */
	if (have_anyelement_result && !FUNC1(anyelement_type))
	{
		if (FUNC1(anyarray_type))
			anyelement_type = FUNC8(ANYELEMENTOID,
												   anyarray_type,
												   ANYARRAYOID);
		if (FUNC1(anyrange_type))
		{
			Oid			subtype = FUNC8(ANYELEMENTOID,
													   anyrange_type,
													   ANYRANGEOID);

			/* check for inconsistent array and range results */
			if (FUNC1(anyelement_type) && anyelement_type != subtype)
				return false;
			anyelement_type = subtype;
		}
	}

	if (have_anyarray_result && !FUNC1(anyarray_type))
		anyarray_type = FUNC8(ANYARRAYOID,
											 anyelement_type,
											 ANYELEMENTOID);

	/*
	 * We can't deduce a range type from other polymorphic inputs, because
	 * there may be multiple range types for the same subtype.
	 */
	if (have_anyrange_result && !FUNC1(anyrange_type))
		return false;

	/* Enforce ANYNONARRAY if needed */
	if (have_anynonarray && FUNC9(anyelement_type))
		return false;

	/* Enforce ANYENUM if needed */
	if (have_anyenum && !FUNC10(anyelement_type))
		return false;

	/*
	 * Identify the collation to use for polymorphic OUT parameters. (It'll
	 * necessarily be the same for both anyelement and anyarray.)  Note that
	 * range types are not collatable, so any possible internal collation of a
	 * range type is not considered here.
	 */
	if (FUNC1(anyelement_type))
		anycollation = FUNC7(anyelement_type);
	else if (FUNC1(anyarray_type))
		anycollation = FUNC7(anyarray_type);

	if (FUNC1(anycollation))
	{
		/*
		 * The types are collatable, so consider whether to use a nondefault
		 * collation.  We do so if we can identify the input collation used
		 * for the function.
		 */
		Oid			inputcollation = FUNC5(call_expr);

		if (FUNC1(inputcollation))
			anycollation = inputcollation;
	}

	/* And finally replace the tuple column types as needed */
	for (i = 0; i < natts; i++)
	{
		Form_pg_attribute att = FUNC2(tupdesc, i);

		switch (att->atttypid)
		{
			case ANYELEMENTOID:
			case ANYNONARRAYOID:
			case ANYENUMOID:
				FUNC3(tupdesc, i + 1,
								   FUNC0(att->attname),
								   anyelement_type,
								   -1,
								   0);
				FUNC4(tupdesc, i + 1, anycollation);
				break;
			case ANYARRAYOID:
				FUNC3(tupdesc, i + 1,
								   FUNC0(att->attname),
								   anyarray_type,
								   -1,
								   0);
				FUNC4(tupdesc, i + 1, anycollation);
				break;
			case ANYRANGEOID:
				FUNC3(tupdesc, i + 1,
								   FUNC0(att->attname),
								   anyrange_type,
								   -1,
								   0);
				/* no collation should be attached to a range type */
				break;
			default:
				break;
		}
	}

	return true;
}