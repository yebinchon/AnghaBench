#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_34__ {scalar_t__ er_magic; scalar_t__ er_decltypeid; int flags; scalar_t__ er_typeid; scalar_t__ er_typmod; int /*<<< orphan*/  dnulls; int /*<<< orphan*/  dvalues; TYPE_4__* fvalue; } ;
struct TYPE_33__ {int /*<<< orphan*/  t_data; int /*<<< orphan*/  t_tableOid; int /*<<< orphan*/  t_self; int /*<<< orphan*/  t_len; } ;
struct TYPE_32__ {int /*<<< orphan*/  atomic; } ;
struct TYPE_31__ {scalar_t__ rectypeid; TYPE_5__* erh; } ;
struct TYPE_30__ {scalar_t__ dtype; } ;
typedef  TYPE_1__ PLpgSQL_variable ;
typedef  TYPE_2__ PLpgSQL_rec ;
typedef  TYPE_3__ PLpgSQL_execstate ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HeapTupleHeader ;
typedef  TYPE_4__ HeapTupleData ;
typedef  TYPE_5__ ExpandedRecordHeader ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int ER_FLAG_FVALUE_VALID ; 
 scalar_t__ ER_MAGIC ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 scalar_t__ FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ PLPGSQL_DTYPE_REC ; 
 scalar_t__ RECORDOID ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,TYPE_1__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,TYPE_1__*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*,TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__) ; 
 TYPE_5__* FUNC22 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *,TYPE_5__*) ; 
 TYPE_5__* FUNC23 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC25(PLpgSQL_execstate *estate,
						 PLpgSQL_variable *target,
						 Datum value)
{
	/* Check to see if source is an expanded record */
	if (FUNC12(FUNC3(value)))
	{
		ExpandedRecordHeader *erh = (ExpandedRecordHeader *) FUNC1(value);
		ExpandedRecordHeader *newerh = NULL;

		FUNC0(erh->er_magic == ER_MAGIC);

		/* These cases apply if the target is record not row... */
		if (target->dtype == PLPGSQL_DTYPE_REC)
		{
			PLpgSQL_rec *rec = (PLpgSQL_rec *) target;

			/*
			 * If it's the same record already stored in the variable, do
			 * nothing.  This would happen only in silly cases like "r := r",
			 * but we need some check to avoid possibly freeing the variable's
			 * live value below.  Note that this applies even if what we have
			 * is a R/O pointer.
			 */
			if (erh == rec->erh)
				return;

			/*
			 * Make sure rec->rectypeid is up-to-date before using it.
			 */
			FUNC24(rec);

			/*
			 * If we have a R/W pointer, we're allowed to just commandeer
			 * ownership of the expanded record.  If it's of the right type to
			 * put into the record variable, do that.  (Note we don't accept
			 * an expanded record of a composite-domain type as a RECORD
			 * value.  We'll treat it as the base composite type instead;
			 * compare logic in make_expanded_record_for_rec.)
			 */
			if (FUNC13(FUNC3(value)) &&
				(rec->rectypeid == erh->er_decltypeid ||
				 (rec->rectypeid == RECORDOID &&
				  !FUNC4(erh))))
			{
				FUNC14(estate, rec, erh);
				return;
			}

			/*
			 * If we already have an expanded record object in the target
			 * variable, and the source record contains a valid tuple
			 * representation with the right rowtype, then we can skip making
			 * a new expanded record and just assign the tuple with
			 * expanded_record_set_tuple.  (We can't do the equivalent if we
			 * have to do field-by-field assignment, since that wouldn't be
			 * atomic if there's an error.)  We consider that there's a
			 * rowtype match only if it's the same named composite type or
			 * same registered rowtype; checking for matches of anonymous
			 * rowtypes would be more expensive than this is worth.
			 */
			if (rec->erh &&
				(erh->flags & ER_FLAG_FVALUE_VALID) &&
				erh->er_typeid == rec->erh->er_typeid &&
				(erh->er_typeid != RECORDOID ||
				 (erh->er_typmod == rec->erh->er_typmod &&
				  erh->er_typmod >= 0)))
			{
				FUNC19(rec->erh, erh->fvalue,
										  true, !estate->atomic);
				return;
			}

			/*
			 * Otherwise we're gonna need a new expanded record object.  Make
			 * it here in hopes of piggybacking on the source object's
			 * previous typcache lookup.
			 */
			newerh = FUNC22(estate, rec, NULL, erh);

			/*
			 * If the expanded record contains a valid tuple representation,
			 * and we don't need rowtype conversion, then just copying the
			 * tuple is probably faster than field-by-field processing.  (This
			 * isn't duplicative of the previous check, since here we will
			 * catch the case where the record variable was previously empty.)
			 */
			if ((erh->flags & ER_FLAG_FVALUE_VALID) &&
				(rec->rectypeid == RECORDOID ||
				 rec->rectypeid == erh->er_typeid))
			{
				FUNC19(newerh, erh->fvalue,
										  true, !estate->atomic);
				FUNC14(estate, rec, newerh);
				return;
			}

			/*
			 * Need to special-case empty source record, else code below would
			 * leak newerh.
			 */
			if (FUNC5(erh))
			{
				/* Set newerh to a row of NULLs */
				FUNC15(newerh);
				FUNC14(estate, rec, newerh);
				return;
			}
		}						/* end of record-target-only cases */

		/*
		 * If the source expanded record is empty, we should treat that like a
		 * NULL tuple value.  (We're unlikely to see such a case, but we must
		 * check this; deconstruct_expanded_record would cause a change of
		 * logical state, which is not OK.)
		 */
		if (FUNC5(erh))
		{
			FUNC16(estate, target, NULL,
						  FUNC18(erh));
			return;
		}

		/*
		 * Otherwise, ensure that the source record is deconstructed, and
		 * assign from its field values.
		 */
		FUNC15(erh);
		FUNC17(estate, target, newerh,
								  erh->dvalues, erh->dnulls,
								  FUNC18(erh));
	}
	else
	{
		/*
		 * Nope, we've got a plain composite Datum.  Deconstruct it; but we
		 * don't use deconstruct_composite_datum(), because we may be able to
		 * skip calling lookup_rowtype_tupdesc().
		 */
		HeapTupleHeader td;
		HeapTupleData tmptup;
		Oid			tupType;
		int32		tupTypmod;
		TupleDesc	tupdesc;
		MemoryContext oldcontext;

		/* Ensure that any detoasted data winds up in the eval_mcontext */
		oldcontext = FUNC10(FUNC20(estate));
		/* Get tuple body (note this could involve detoasting) */
		td = FUNC2(value);
		FUNC10(oldcontext);

		/* Build a temporary HeapTuple control structure */
		tmptup.t_len = FUNC6(td);
		FUNC9(&(tmptup.t_self));
		tmptup.t_tableOid = InvalidOid;
		tmptup.t_data = td;

		/* Extract rowtype info */
		tupType = FUNC8(td);
		tupTypmod = FUNC7(td);

		/* Now, if the target is record not row, maybe we can optimize ... */
		if (target->dtype == PLPGSQL_DTYPE_REC)
		{
			PLpgSQL_rec *rec = (PLpgSQL_rec *) target;

			/*
			 * If we already have an expanded record object in the target
			 * variable, and the source datum has a matching rowtype, then we
			 * can skip making a new expanded record and just assign the tuple
			 * with expanded_record_set_tuple.  We consider that there's a
			 * rowtype match only if it's the same named composite type or
			 * same registered rowtype.  (Checking to reject an anonymous
			 * rowtype here should be redundant, but let's be safe.)
			 */
			if (rec->erh &&
				tupType == rec->erh->er_typeid &&
				(tupType != RECORDOID ||
				 (tupTypmod == rec->erh->er_typmod &&
				  tupTypmod >= 0)))
			{
				FUNC19(rec->erh, &tmptup,
										  true, !estate->atomic);
				return;
			}

			/*
			 * If the source datum has a rowtype compatible with the target
			 * variable, just build a new expanded record and assign the tuple
			 * into it.  Using make_expanded_record_from_typeid() here saves
			 * one typcache lookup compared to the code below.
			 */
			if (rec->rectypeid == RECORDOID || rec->rectypeid == tupType)
			{
				ExpandedRecordHeader *newerh;
				MemoryContext mcontext = FUNC20(estate);

				newerh = FUNC23(tupType, tupTypmod,
														  mcontext);
				FUNC19(newerh, &tmptup,
										  true, !estate->atomic);
				FUNC14(estate, rec, newerh);
				return;
			}

			/*
			 * Otherwise, we're going to need conversion, so fall through to
			 * do it the hard way.
			 */
		}

		/*
		 * ROW target, or unoptimizable RECORD target, so we have to expend a
		 * lookup to obtain the source datum's tupdesc.
		 */
		tupdesc = FUNC21(tupType, tupTypmod);

		/* Do the move */
		FUNC16(estate, target, &tmptup, tupdesc);

		/* Release tupdesc usage count */
		FUNC11(tupdesc);
	}
}