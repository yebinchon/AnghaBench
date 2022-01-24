#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_5__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_30__ {TYPE_4__* tg_relation; int /*<<< orphan*/ * tg_trigslot; int /*<<< orphan*/ * tg_newslot; int /*<<< orphan*/  tg_event; int /*<<< orphan*/  tg_trigger; } ;
typedef  TYPE_2__ TriggerData ;
struct TYPE_33__ {int nkeys; int /*<<< orphan*/ * pf_eq_oprs; int /*<<< orphan*/ * pk_attnums; int /*<<< orphan*/ * fk_attnums; int /*<<< orphan*/  conname; int /*<<< orphan*/  confmatchtype; int /*<<< orphan*/  pk_relid; } ;
struct TYPE_32__ {TYPE_1__* rd_rel; } ;
struct TYPE_31__ {int /*<<< orphan*/  data; } ;
struct TYPE_29__ {scalar_t__ relkind; } ;
typedef  TYPE_3__ StringInfoData ;
typedef  int /*<<< orphan*/ * SPIPlanPtr ;
typedef  TYPE_4__* Relation ;
typedef  int /*<<< orphan*/  RI_QueryKey ;
typedef  TYPE_5__ RI_ConstraintInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FOREIGN_KEY_VIOLATION ; 
 int /*<<< orphan*/  ERROR ; 
#define  FKCONSTR_MATCH_FULL 133 
#define  FKCONSTR_MATCH_PARTIAL 132 
#define  FKCONSTR_MATCH_SIMPLE 131 
 int MAX_QUOTED_NAME_LEN ; 
 int MAX_QUOTED_REL_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
#define  RI_KEYS_ALL_NULL 130 
#define  RI_KEYS_NONE_NULL 129 
#define  RI_KEYS_SOME_NULL 128 
 int RI_MAX_NUMKEYS ; 
 int /*<<< orphan*/  RI_PLAN_CHECK_LOOKUPPK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  RowShareLock ; 
 scalar_t__ SPI_OK_CONNECT ; 
 scalar_t__ SPI_OK_FINISH ; 
 int /*<<< orphan*/  SPI_OK_SELECT ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  SnapshotSelf ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,TYPE_5__ const*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC21 (int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__ const*,int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_5__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC26 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC27 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Datum
FUNC31(TriggerData *trigdata)
{
	const RI_ConstraintInfo *riinfo;
	Relation	fk_rel;
	Relation	pk_rel;
	TupleTableSlot *newslot;
	RI_QueryKey qkey;
	SPIPlanPtr	qplan;

	riinfo = FUNC21(trigdata->tg_trigger,
									trigdata->tg_relation, false);

	if (FUNC8(trigdata->tg_event))
		newslot = trigdata->tg_newslot;
	else
		newslot = trigdata->tg_trigslot;

	/*
	 * We should not even consider checking the row if it is no longer valid,
	 * since it was either deleted (so the deferred check should be skipped)
	 * or updated (in which case only the latest version of the row should be
	 * checked).  Test its liveness according to SnapshotSelf.  We need pin
	 * and lock on the buffer to call HeapTupleSatisfiesVisibility.  Caller
	 * should be holding pin, but not lock.
	 */
	if (!FUNC30(trigdata->tg_relation, newslot, SnapshotSelf))
		return FUNC1(NULL);

	/*
	 * Get the relation descriptors of the FK and PK tables.
	 *
	 * pk_rel is opened in RowShareLock mode since that's what our eventual
	 * SELECT FOR KEY SHARE will get on it.
	 */
	fk_rel = trigdata->tg_relation;
	pk_rel = FUNC29(riinfo->pk_relid, RowShareLock);

	switch (FUNC24(FUNC4(fk_rel), newslot, riinfo, false))
	{
		case RI_KEYS_ALL_NULL:

			/*
			 * No further check needed - an all-NULL key passes every type of
			 * foreign key constraint.
			 */
			FUNC28(pk_rel, RowShareLock);
			return FUNC1(NULL);

		case RI_KEYS_SOME_NULL:

			/*
			 * This is the only case that differs between the three kinds of
			 * MATCH.
			 */
			switch (riinfo->confmatchtype)
			{
				case FKCONSTR_MATCH_FULL:

					/*
					 * Not allowed - MATCH FULL says either all or none of the
					 * attributes can be NULLs
					 */
					FUNC12(ERROR,
							(FUNC13(ERRCODE_FOREIGN_KEY_VIOLATION),
							 FUNC15("insert or update on table \"%s\" violates foreign key constraint \"%s\"",
									FUNC5(fk_rel),
									FUNC0(riinfo->conname)),
							 FUNC14("MATCH FULL does not allow mixing of null and nonnull key values."),
							 FUNC16(fk_rel,
												FUNC0(riinfo->conname))));
					FUNC28(pk_rel, RowShareLock);
					return FUNC1(NULL);

				case FKCONSTR_MATCH_SIMPLE:

					/*
					 * MATCH SIMPLE - if ANY column is null, the key passes
					 * the constraint.
					 */
					FUNC28(pk_rel, RowShareLock);
					return FUNC1(NULL);

#ifdef NOT_USED
				case FKCONSTR_MATCH_PARTIAL:

					/*
					 * MATCH PARTIAL - all non-null columns must match. (not
					 * implemented, can be done by modifying the query below
					 * to only include non-null columns, or by writing a
					 * special version here)
					 */
					break;
#endif
			}

		case RI_KEYS_NONE_NULL:

			/*
			 * Have a full qualified key - continue below for all three kinds
			 * of MATCH.
			 */
			break;
	}

	if (FUNC6() != SPI_OK_CONNECT)
		FUNC11(ERROR, "SPI_connect failed");

	/* Fetch or prepare a saved plan for the real check */
	FUNC20(&qkey, riinfo, RI_PLAN_CHECK_LOOKUPPK);

	if ((qplan = FUNC22(&qkey)) == NULL)
	{
		StringInfoData querybuf;
		char		pkrelname[MAX_QUOTED_REL_NAME_LEN];
		char		attname[MAX_QUOTED_NAME_LEN];
		char		paramname[16];
		const char *querysep;
		Oid			queryoids[RI_MAX_NUMKEYS];
		const char *pk_only;

		/* ----------
		 * The query string built is
		 *	SELECT 1 FROM [ONLY] <pktable> x WHERE pkatt1 = $1 [AND ...]
		 *		   FOR KEY SHARE OF x
		 * The type id's for the $ parameters are those of the
		 * corresponding FK attributes.
		 * ----------
		 */
		FUNC17(&querybuf);
		pk_only = pk_rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE ?
			"" : "ONLY ";
		FUNC19(pkrelname, pk_rel);
		FUNC9(&querybuf, "SELECT 1 FROM %s%s x",
						 pk_only, pkrelname);
		querysep = "WHERE";
		for (int i = 0; i < riinfo->nkeys; i++)
		{
			Oid			pk_type = FUNC3(pk_rel, riinfo->pk_attnums[i]);
			Oid			fk_type = FUNC3(fk_rel, riinfo->fk_attnums[i]);

			FUNC18(attname,
						 FUNC2(pk_rel, riinfo->pk_attnums[i]));
			FUNC27(paramname, "$%d", i + 1);
			FUNC23(&querybuf, querysep,
							attname, pk_type,
							riinfo->pf_eq_oprs[i],
							paramname, fk_type);
			querysep = "AND";
			queryoids[i] = fk_type;
		}
		FUNC10(&querybuf, " FOR KEY SHARE OF x");

		/* Prepare and save the plan */
		qplan = FUNC26(querybuf.data, riinfo->nkeys, queryoids,
							 &qkey, fk_rel, pk_rel);
	}

	/*
	 * Now check that foreign key exists in PK table
	 */
	FUNC25(riinfo, &qkey, qplan,
					fk_rel, pk_rel,
					NULL, newslot,
					false,
					SPI_OK_SELECT);

	if (FUNC7() != SPI_OK_FINISH)
		FUNC11(ERROR, "SPI_finish failed");

	FUNC28(pk_rel, RowShareLock);

	return FUNC1(NULL);
}