#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_21__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  workmembuf ;
struct TYPE_32__ {int /*<<< orphan*/  tts_isnull; int /*<<< orphan*/  tts_values; } ;
typedef  TYPE_2__ TupleTableSlot ;
typedef  int /*<<< orphan*/  TupleDesc ;
typedef  int /*<<< orphan*/  Trigger ;
struct TYPE_35__ {int nkeys; int* fk_attnums; int* pk_attnums; int confmatchtype; int /*<<< orphan*/ * pf_eq_oprs; } ;
struct TYPE_34__ {TYPE_1__* rd_rel; } ;
struct TYPE_33__ {int /*<<< orphan*/  data; } ;
struct TYPE_31__ {int /*<<< orphan*/  tupdesc; int /*<<< orphan*/ * vals; } ;
struct TYPE_30__ {scalar_t__ relkind; } ;
typedef  TYPE_3__ StringInfoData ;
typedef  int /*<<< orphan*/ * SPIPlanPtr ;
typedef  TYPE_4__* Relation ;
typedef  TYPE_5__ RI_ConstraintInfo ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
#define  FKCONSTR_MATCH_FULL 129 
#define  FKCONSTR_MATCH_SIMPLE 128 
 int /*<<< orphan*/  GUC_ACTION_SAVE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  InvalidSnapshot ; 
 int /*<<< orphan*/  MAX_QUOTED_NAME_LEN ; 
 int MAX_QUOTED_REL_NAME_LEN ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  PGC_S_SESSION ; 
 int /*<<< orphan*/  PGC_USERSET ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 scalar_t__ FUNC5 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 scalar_t__ SPI_OK_CONNECT ; 
 scalar_t__ SPI_OK_FINISH ; 
 int SPI_OK_SELECT ; 
 scalar_t__ FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ SPI_processed ; 
 int SPI_result ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 TYPE_21__* SPI_tuptable ; 
 int /*<<< orphan*/  TTSOpsVirtual ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,char) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int maintenance_work_mem ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*,TYPE_5__ const*,int) ; 
 char* FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*,TYPE_4__*) ; 
 TYPE_5__* FUNC24 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*,char const*,char*,scalar_t__,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_5__*,TYPE_4__*,TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC28 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC29 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC30 (char*,char*) ; 

void
FUNC31(Trigger *trigger, Relation fk_rel, Relation pk_rel)
{
	const RI_ConstraintInfo *riinfo;
	StringInfoData querybuf;
	char	   *constraintDef;
	char		pkrelname[MAX_QUOTED_REL_NAME_LEN];
	char		fkrelname[MAX_QUOTED_REL_NAME_LEN];
	char		pkattname[MAX_QUOTED_NAME_LEN + 3];
	char		fkattname[MAX_QUOTED_NAME_LEN + 3];
	const char *sep;
	const char *fk_only;
	int			save_nestlevel;
	char		workmembuf[32];
	int			spi_result;
	SPIPlanPtr	qplan;
	int			i;

	riinfo = FUNC24(trigger, fk_rel, false);

	/*
	 * We don't check permissions before displaying the error message, on the
	 * assumption that the user detaching the partition must have enough
	 * privileges to examine the table contents anyhow.
	 */

	/*----------
	 * The query string built is:
	 *  SELECT fk.keycols FROM [ONLY] relname fk
	 *    JOIN pkrelname pk
	 *    ON (pk.pkkeycol1=fk.keycol1 [AND ...])
	 *    WHERE (<partition constraint>) AND
	 * For MATCH SIMPLE:
	 *   (fk.keycol1 IS NOT NULL [AND ...])
	 * For MATCH FULL:
	 *   (fk.keycol1 IS NOT NULL [OR ...])
	 *
	 * We attach COLLATE clauses to the operators when comparing columns
	 * that have different collations.
	 *----------
	 */
	FUNC19(&querybuf);
	FUNC16(&querybuf, "SELECT ");
	sep = "";
	for (i = 0; i < riinfo->nkeys; i++)
	{
		FUNC22(fkattname,
					 FUNC6(fk_rel, riinfo->fk_attnums[i]));
		FUNC14(&querybuf, "%sfk.%s", sep, fkattname);
		sep = ", ";
	}

	FUNC23(pkrelname, pk_rel);
	FUNC23(fkrelname, fk_rel);
	fk_only = fk_rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE ?
		"" : "ONLY ";
	FUNC14(&querybuf,
					 " FROM %s%s fk JOIN %s pk ON",
					 fk_only, fkrelname, pkrelname);
	FUNC30(pkattname, "pk.");
	FUNC30(fkattname, "fk.");
	sep = "(";
	for (i = 0; i < riinfo->nkeys; i++)
	{
		Oid			pk_type = FUNC7(pk_rel, riinfo->pk_attnums[i]);
		Oid			fk_type = FUNC7(fk_rel, riinfo->fk_attnums[i]);
		Oid			pk_coll = FUNC5(pk_rel, riinfo->pk_attnums[i]);
		Oid			fk_coll = FUNC5(fk_rel, riinfo->fk_attnums[i]);

		FUNC22(pkattname + 3,
					 FUNC6(pk_rel, riinfo->pk_attnums[i]));
		FUNC22(fkattname + 3,
					 FUNC6(fk_rel, riinfo->fk_attnums[i]));
		FUNC25(&querybuf, sep,
						pkattname, pk_type,
						riinfo->pf_eq_oprs[i],
						fkattname, fk_type);
		if (pk_coll != fk_coll)
			FUNC26(&querybuf, pk_coll);
		sep = "AND";
	}

	/*
	 * Start the WHERE clause with the partition constraint (except if this is
	 * the default partition and there's no other partition, because the
	 * partition constraint is the empty string in that case.)
	 */
	constraintDef = FUNC21(FUNC8(pk_rel), "pk");
	if (constraintDef && constraintDef[0] != '\0')
		FUNC14(&querybuf, ") WHERE %s AND (",
						 constraintDef);
	else
		FUNC14(&querybuf, ") WHERE (");

	sep = "";
	for (i = 0; i < riinfo->nkeys; i++)
	{
		FUNC22(fkattname, FUNC6(fk_rel, riinfo->fk_attnums[i]));
		FUNC14(&querybuf,
						 "%sfk.%s IS NOT NULL",
						 sep, fkattname);
		switch (riinfo->confmatchtype)
		{
			case FKCONSTR_MATCH_SIMPLE:
				sep = " AND ";
				break;
			case FKCONSTR_MATCH_FULL:
				sep = " OR ";
				break;
		}
	}
	FUNC15(&querybuf, ')');

	/*
	 * Temporarily increase work_mem so that the check query can be executed
	 * more efficiently.  It seems okay to do this because the query is simple
	 * enough to not use a multiple of work_mem, and one typically would not
	 * have many large foreign-key validations happening concurrently.  So
	 * this seems to meet the criteria for being considered a "maintenance"
	 * operation, and accordingly we use maintenance_work_mem.
	 *
	 * We use the equivalent of a function SET option to allow the setting to
	 * persist for exactly the duration of the check query.  guc.c also takes
	 * care of undoing the setting on error.
	 */
	save_nestlevel = FUNC4();

	FUNC29(workmembuf, sizeof(workmembuf), "%d", maintenance_work_mem);
	(void) FUNC28("work_mem", workmembuf,
							 PGC_USERSET, PGC_S_SESSION,
							 GUC_ACTION_SAVE, true, 0, false);

	if (FUNC9() != SPI_OK_CONNECT)
		FUNC17(ERROR, "SPI_connect failed");

	/*
	 * Generate the plan.  We don't need to cache it, and there are no
	 * arguments to the plan.
	 */
	qplan = FUNC12(querybuf.data, 0, NULL);

	if (qplan == NULL)
		FUNC17(ERROR, "SPI_prepare returned %s for %s",
			 FUNC13(SPI_result), querybuf.data);

	/*
	 * Run the plan.  For safety we force a current snapshot to be used. (In
	 * transaction-snapshot mode, this arguably violates transaction isolation
	 * rules, but we really haven't got much choice.) We don't need to
	 * register the snapshot, because SPI_execute_snapshot will see to it. We
	 * need at most one tuple returned, so pass limit = 1.
	 */
	spi_result = FUNC10(qplan,
									  NULL, NULL,
									  FUNC2(),
									  InvalidSnapshot,
									  true, false, 1);

	/* Check result */
	if (spi_result != SPI_OK_SELECT)
		FUNC17(ERROR, "SPI_execute_snapshot returned %s", FUNC13(spi_result));

	/* Did we find a tuple that would violate the constraint? */
	if (SPI_processed > 0)
	{
		TupleTableSlot *slot;
		HeapTuple	tuple = SPI_tuptable->vals[0];
		TupleDesc	tupdesc = SPI_tuptable->tupdesc;
		RI_ConstraintInfo fake_riinfo;

		slot = FUNC3(tupdesc, &TTSOpsVirtual);

		FUNC18(tuple, tupdesc,
						  slot->tts_values, slot->tts_isnull);
		FUNC1(slot);

		/*
		 * The columns to look at in the result tuple are 1..N, not whatever
		 * they are in the fk_rel.  Hack up riinfo so that ri_ReportViolation
		 * will behave properly.
		 *
		 * In addition to this, we have to pass the correct tupdesc to
		 * ri_ReportViolation, overriding its normal habit of using the pk_rel
		 * or fk_rel's tupdesc.
		 */
		FUNC20(&fake_riinfo, riinfo, sizeof(RI_ConstraintInfo));
		for (i = 0; i < fake_riinfo.nkeys; i++)
			fake_riinfo.pk_attnums[i] = i + 1;

		FUNC27(&fake_riinfo, pk_rel, fk_rel,
						   slot, tupdesc, 0, true);
	}

	if (FUNC11() != SPI_OK_FINISH)
		FUNC17(ERROR, "SPI_finish failed");

	/*
	 * Restore work_mem.
	 */
	FUNC0(true, save_nestlevel);
}