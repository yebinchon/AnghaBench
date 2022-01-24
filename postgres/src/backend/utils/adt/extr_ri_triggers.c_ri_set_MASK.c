#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_28__ {int /*<<< orphan*/ * tg_trigslot; TYPE_4__* tg_relation; int /*<<< orphan*/  tg_trigger; } ;
typedef  TYPE_2__ TriggerData ;
struct TYPE_31__ {int nkeys; int /*<<< orphan*/ * pf_eq_oprs; int /*<<< orphan*/ * fk_attnums; int /*<<< orphan*/ * pk_attnums; int /*<<< orphan*/  fk_relid; } ;
struct TYPE_30__ {TYPE_1__* rd_rel; } ;
struct TYPE_29__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
struct TYPE_27__ {scalar_t__ relkind; } ;
typedef  TYPE_3__ StringInfoData ;
typedef  int /*<<< orphan*/ * SPIPlanPtr ;
typedef  TYPE_4__* Relation ;
typedef  int /*<<< orphan*/  RI_QueryKey ;
typedef  TYPE_5__ RI_ConstraintInfo ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int MAX_QUOTED_NAME_LEN ; 
 int MAX_QUOTED_REL_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 scalar_t__ FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int RI_MAX_NUMKEYS ; 
 int /*<<< orphan*/  RI_PLAN_SETDEFAULT_DOUPDATE ; 
 int /*<<< orphan*/  RI_PLAN_SETNULL_DOUPDATE ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 scalar_t__ SPI_OK_CONNECT ; 
 scalar_t__ SPI_OK_FINISH ; 
 int /*<<< orphan*/  SPI_OK_UPDATE ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*,char const*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_5__ const*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC14 (int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,char const*,char*,scalar_t__,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ,int,scalar_t__*,int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Datum
FUNC24(TriggerData *trigdata, bool is_set_null)
{
	const RI_ConstraintInfo *riinfo;
	Relation	fk_rel;
	Relation	pk_rel;
	TupleTableSlot *oldslot;
	RI_QueryKey qkey;
	SPIPlanPtr	qplan;

	riinfo = FUNC14(trigdata->tg_trigger,
									trigdata->tg_relation, true);

	/*
	 * Get the relation descriptors of the FK and PK tables and the old tuple.
	 *
	 * fk_rel is opened in RowExclusiveLock mode since that's what our
	 * eventual UPDATE will get on it.
	 */
	fk_rel = FUNC23(riinfo->fk_relid, RowExclusiveLock);
	pk_rel = trigdata->tg_relation;
	oldslot = trigdata->tg_trigslot;

	if (FUNC4() != SPI_OK_CONNECT)
		FUNC8(ERROR, "SPI_connect failed");

	/*
	 * Fetch or prepare a saved plan for the set null/default operation (it's
	 * the same query for delete and update cases)
	 */
	FUNC13(&qkey, riinfo,
					 (is_set_null
					  ? RI_PLAN_SETNULL_DOUPDATE
					  : RI_PLAN_SETDEFAULT_DOUPDATE));

	if ((qplan = FUNC15(&qkey)) == NULL)
	{
		StringInfoData querybuf;
		StringInfoData qualbuf;
		char		fkrelname[MAX_QUOTED_REL_NAME_LEN];
		char		attname[MAX_QUOTED_NAME_LEN];
		char		paramname[16];
		const char *querysep;
		const char *qualsep;
		Oid			queryoids[RI_MAX_NUMKEYS];
		const char *fk_only;

		/* ----------
		 * The query string built is
		 *	UPDATE [ONLY] <fktable> SET fkatt1 = {NULL|DEFAULT} [, ...]
		 *			WHERE $1 = fkatt1 [AND ...]
		 * The type id's for the $ parameters are those of the
		 * corresponding PK attributes.
		 * ----------
		 */
		FUNC10(&querybuf);
		FUNC10(&qualbuf);
		fk_only = fk_rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE ?
			"" : "ONLY ";
		FUNC12(fkrelname, fk_rel);
		FUNC7(&querybuf, "UPDATE %s%s SET",
						 fk_only, fkrelname);
		querysep = "";
		qualsep = "WHERE";
		for (int i = 0; i < riinfo->nkeys; i++)
		{
			Oid			pk_type = FUNC3(pk_rel, riinfo->pk_attnums[i]);
			Oid			fk_type = FUNC3(fk_rel, riinfo->fk_attnums[i]);
			Oid			pk_coll = FUNC1(pk_rel, riinfo->pk_attnums[i]);
			Oid			fk_coll = FUNC1(fk_rel, riinfo->fk_attnums[i]);

			FUNC11(attname,
						 FUNC2(fk_rel, riinfo->fk_attnums[i]));
			FUNC7(&querybuf,
							 "%s %s = %s",
							 querysep, attname,
							 is_set_null ? "NULL" : "DEFAULT");
			FUNC21(paramname, "$%d", i + 1);
			FUNC16(&qualbuf, qualsep,
							paramname, pk_type,
							riinfo->pf_eq_oprs[i],
							attname, fk_type);
			if (pk_coll != fk_coll && !FUNC9(pk_coll))
				FUNC17(&querybuf, pk_coll);
			querysep = ",";
			qualsep = "AND";
			queryoids[i] = pk_type;
		}
		FUNC6(&querybuf, qualbuf.data, qualbuf.len);

		/* Prepare and save the plan */
		qplan = FUNC19(querybuf.data, riinfo->nkeys, queryoids,
							 &qkey, fk_rel, pk_rel);
	}

	/*
	 * We have a plan now. Run it to update the existing references.
	 */
	FUNC18(riinfo, &qkey, qplan,
					fk_rel, pk_rel,
					oldslot, NULL,
					true,		/* must detect new rows */
					SPI_OK_UPDATE);

	if (FUNC5() != SPI_OK_FINISH)
		FUNC8(ERROR, "SPI_finish failed");

	FUNC22(fk_rel, RowExclusiveLock);

	if (is_set_null)
		return FUNC0(NULL);
	else
	{
		/*
		 * If we just deleted or updated the PK row whose key was equal to the
		 * FK columns' default values, and a referencing row exists in the FK
		 * table, we would have updated that row to the same values it already
		 * had --- and RI_FKey_fk_upd_check_required would hence believe no
		 * check is necessary.  So we need to do another lookup now and in
		 * case a reference still exists, abort the operation.  That is
		 * already implemented in the NO ACTION trigger, so just run it. (This
		 * recheck is only needed in the SET DEFAULT case, since CASCADE would
		 * remove such rows in case of a DELETE operation or would change the
		 * FK key values in case of an UPDATE, while SET NULL is certain to
		 * result in rows that satisfy the FK constraint.)
		 */
		return FUNC20(trigdata, true);
	}
}