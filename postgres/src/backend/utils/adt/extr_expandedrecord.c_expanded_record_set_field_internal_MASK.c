#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct varlena {int dummy; } ;
typedef  TYPE_2__* TupleDesc ;
struct TYPE_11__ {int /*<<< orphan*/  eoh_context; } ;
struct TYPE_14__ {int flags; scalar_t__ nfields; int* dnulls; char* fstartptr; char* fendptr; scalar_t__ flat_size; int /*<<< orphan*/ * dvalues; int /*<<< orphan*/  er_short_term_cxt; TYPE_1__ hdr; TYPE_2__* er_tupdesc; } ;
struct TYPE_13__ {int attlen; int /*<<< orphan*/  attbyval; } ;
struct TYPE_12__ {scalar_t__ natts; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_3__* Form_pg_attribute ;
typedef  TYPE_4__ ExpandedRecordHeader ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int ER_FLAG_DVALUES_ALLOCED ; 
 int ER_FLAG_DVALUES_VALID ; 
 int ER_FLAG_FVALUE_VALID ; 
 int ER_FLAG_HAVE_EXTERNAL ; 
 int ER_FLAG_IS_DOMAIN ; 
 int ER_FLAG_IS_DUMMY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (TYPE_2__*,int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (struct varlena*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (int) ; 

void
FUNC15(ExpandedRecordHeader *erh, int fnumber,
								   Datum newValue, bool isnull,
								   bool expand_external,
								   bool check_constraints)
{
	TupleDesc	tupdesc;
	Form_pg_attribute attr;
	Datum	   *dvalues;
	bool	   *dnulls;
	char	   *oldValue;

	/*
	 * Shouldn't ever be trying to assign new data to a dummy header, except
	 * in the case of an internal call for field inlining.
	 */
	FUNC0(!(erh->flags & ER_FLAG_IS_DUMMY) || !check_constraints);

	/* Before performing the assignment, see if result will satisfy domain */
	if ((erh->flags & ER_FLAG_IS_DOMAIN) && check_constraints)
		FUNC7(erh, fnumber, newValue, isnull);

	/* If we haven't yet deconstructed the tuple, do that */
	if (!(erh->flags & ER_FLAG_DVALUES_VALID))
		FUNC9(erh);

	/* Tuple descriptor must be valid by now */
	tupdesc = erh->er_tupdesc;
	FUNC0(erh->nfields == tupdesc->natts);

	/* Caller error if fnumber is system column or nonexistent column */
	if (FUNC14(fnumber <= 0 || fnumber > erh->nfields))
		FUNC11(ERROR, "cannot assign to field %d of expanded record", fnumber);

	/*
	 * Copy new field value into record's context, and deal with detoasting,
	 * if needed.
	 */
	attr = FUNC5(tupdesc, fnumber - 1);
	if (!isnull && !attr->attbyval)
	{
		MemoryContext oldcxt;

		/* If requested, detoast any external value */
		if (expand_external)
		{
			if (attr->attlen == -1 &&
				FUNC6(FUNC1(newValue)))
			{
				/* Detoasting should be done in short-lived context. */
				oldcxt = FUNC3(FUNC12(erh));
				newValue = FUNC4(FUNC10((struct varlena *) FUNC1(newValue)));
				FUNC3(oldcxt);
			}
			else
				expand_external = false;	/* need not clean up below */
		}

		/* Copy value into record's context */
		oldcxt = FUNC3(erh->hdr.eoh_context);
		newValue = FUNC8(newValue, false, attr->attlen);
		FUNC3(oldcxt);

		/* We can now flush anything that detoasting might have leaked */
		if (expand_external)
			FUNC2(erh->er_short_term_cxt);

		/* Remember that we have field(s) that may need to be pfree'd */
		erh->flags |= ER_FLAG_DVALUES_ALLOCED;

		/*
		 * While we're here, note whether it's an external toasted value,
		 * because that could mean we need to inline it later.  (Think not to
		 * merge this into the previous expand_external logic: datumCopy could
		 * by itself have made the value non-external.)
		 */
		if (attr->attlen == -1 &&
			FUNC6(FUNC1(newValue)))
			erh->flags |= ER_FLAG_HAVE_EXTERNAL;
	}

	/*
	 * We're ready to make irreversible changes.
	 */
	dvalues = erh->dvalues;
	dnulls = erh->dnulls;

	/* Flattened value will no longer represent record accurately */
	erh->flags &= ~ER_FLAG_FVALUE_VALID;
	/* And we don't know the flattened size either */
	erh->flat_size = 0;

	/* Grab old field value for pfree'ing, if needed. */
	if (!attr->attbyval && !dnulls[fnumber - 1])
		oldValue = (char *) FUNC1(dvalues[fnumber - 1]);
	else
		oldValue = NULL;

	/* And finally we can insert the new field. */
	dvalues[fnumber - 1] = newValue;
	dnulls[fnumber - 1] = isnull;

	/*
	 * Free old field if needed; this keeps repeated field replacements from
	 * bloating the record's storage.  If the pfree somehow fails, it won't
	 * corrupt the record.
	 *
	 * If we're updating a dummy header, we can't risk pfree'ing the old
	 * value, because most likely the expanded record's main header still has
	 * a pointer to it.  This won't result in any sustained memory leak, since
	 * whatever we just allocated here is in the short-lived domain check
	 * context.
	 */
	if (oldValue && !(erh->flags & ER_FLAG_IS_DUMMY))
	{
		/* Don't try to pfree a part of the original flat record */
		if (oldValue < erh->fstartptr || oldValue >= erh->fendptr)
			FUNC13(oldValue);
	}
}