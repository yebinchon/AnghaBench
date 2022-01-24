#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_26__ {int nkeys; int /*<<< orphan*/ * pp_eq_oprs; int /*<<< orphan*/ * pk_attnums; } ;
struct TYPE_25__ {TYPE_1__* rd_rel; } ;
struct TYPE_24__ {int /*<<< orphan*/  data; } ;
struct TYPE_23__ {scalar_t__ relkind; } ;
typedef  TYPE_2__ StringInfoData ;
typedef  int /*<<< orphan*/ * SPIPlanPtr ;
typedef  TYPE_3__* Relation ;
typedef  int /*<<< orphan*/  RI_QueryKey ;
typedef  TYPE_4__ RI_ConstraintInfo ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int MAX_QUOTED_NAME_LEN ; 
 int MAX_QUOTED_REL_NAME_LEN ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ RI_KEYS_NONE_NULL ; 
 int RI_MAX_NUMKEYS ; 
 int /*<<< orphan*/  RI_PLAN_CHECK_LOOKUPPK_FROM_PK ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ SPI_OK_CONNECT ; 
 scalar_t__ SPI_OK_FINISH ; 
 int /*<<< orphan*/  SPI_OK_SELECT ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_4__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__ const*,int) ; 
 int FUNC16 (TYPE_4__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,int) ; 

__attribute__((used)) static bool
FUNC19(Relation pk_rel, Relation fk_rel,
				  TupleTableSlot *oldslot,
				  const RI_ConstraintInfo *riinfo)
{
	SPIPlanPtr	qplan;
	RI_QueryKey qkey;
	bool		result;

	/* Only called for non-null rows */
	FUNC0(FUNC15(FUNC3(pk_rel), oldslot, riinfo, true) == RI_KEYS_NONE_NULL);

	if (FUNC4() != SPI_OK_CONNECT)
		FUNC8(ERROR, "SPI_connect failed");

	/*
	 * Fetch or prepare a saved plan for checking PK table with values coming
	 * from a PK row
	 */
	FUNC12(&qkey, riinfo, RI_PLAN_CHECK_LOOKUPPK_FROM_PK);

	if ((qplan = FUNC13(&qkey)) == NULL)
	{
		StringInfoData querybuf;
		char		pkrelname[MAX_QUOTED_REL_NAME_LEN];
		char		attname[MAX_QUOTED_NAME_LEN];
		char		paramname[16];
		const char *querysep;
		const char *pk_only;
		Oid			queryoids[RI_MAX_NUMKEYS];

		/* ----------
		 * The query string built is
		 *	SELECT 1 FROM [ONLY] <pktable> x WHERE pkatt1 = $1 [AND ...]
		 *		   FOR KEY SHARE OF x
		 * The type id's for the $ parameters are those of the
		 * PK attributes themselves.
		 * ----------
		 */
		FUNC9(&querybuf);
		pk_only = pk_rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE ?
			"" : "ONLY ";
		FUNC11(pkrelname, pk_rel);
		FUNC6(&querybuf, "SELECT 1 FROM %s%s x",
						 pk_only, pkrelname);
		querysep = "WHERE";
		for (int i = 0; i < riinfo->nkeys; i++)
		{
			Oid			pk_type = FUNC2(pk_rel, riinfo->pk_attnums[i]);

			FUNC10(attname,
						 FUNC1(pk_rel, riinfo->pk_attnums[i]));
			FUNC18(paramname, "$%d", i + 1);
			FUNC14(&querybuf, querysep,
							attname, pk_type,
							riinfo->pp_eq_oprs[i],
							paramname, pk_type);
			querysep = "AND";
			queryoids[i] = pk_type;
		}
		FUNC7(&querybuf, " FOR KEY SHARE OF x");

		/* Prepare and save the plan */
		qplan = FUNC17(querybuf.data, riinfo->nkeys, queryoids,
							 &qkey, fk_rel, pk_rel);
	}

	/*
	 * We have a plan now. Run it.
	 */
	result = FUNC16(riinfo, &qkey, qplan,
							 fk_rel, pk_rel,
							 oldslot, NULL,
							 true,	/* treat like update */
							 SPI_OK_SELECT);

	if (FUNC5() != SPI_OK_FINISH)
		FUNC8(ERROR, "SPI_finish failed");

	return result;
}