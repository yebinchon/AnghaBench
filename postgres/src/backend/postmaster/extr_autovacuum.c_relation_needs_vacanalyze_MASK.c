#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ float4 ;
typedef  scalar_t__ TransactionId ;
struct TYPE_10__ {scalar_t__ vacuum_scale_factor; int vacuum_threshold; scalar_t__ analyze_scale_factor; int analyze_threshold; int enabled; int /*<<< orphan*/  multixact_freeze_max_age; int /*<<< orphan*/  freeze_max_age; } ;
struct TYPE_9__ {scalar_t__ reltuples; int /*<<< orphan*/  relname; int /*<<< orphan*/  relminmxid; int /*<<< orphan*/  relfrozenxid; } ;
struct TYPE_8__ {scalar_t__ n_dead_tuples; scalar_t__ changes_since_analyze; } ;
typedef  TYPE_1__ PgStat_StatTabEntry ;
typedef  scalar_t__ Oid ;
typedef  scalar_t__ MultiXactId ;
typedef  TYPE_2__* Form_pg_class ;
typedef  TYPE_3__ AutoVacOpts ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  DEBUG3 ; 
 scalar_t__ FirstMultiXactId ; 
 scalar_t__ FirstNormalTransactionId ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 scalar_t__ StatisticRelationId ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ autovacuum_anl_scale ; 
 int autovacuum_anl_thresh ; 
 int autovacuum_freeze_max_age ; 
 scalar_t__ autovacuum_vac_scale ; 
 int autovacuum_vac_thresh ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ recentMulti ; 
 scalar_t__ recentXid ; 

__attribute__((used)) static void
FUNC11(Oid relid,
						  AutoVacOpts *relopts,
						  Form_pg_class classForm,
						  PgStat_StatTabEntry *tabentry,
						  int effective_multixact_freeze_max_age,
 /* output params below */
						  bool *dovacuum,
						  bool *doanalyze,
						  bool *wraparound)
{
	bool		force_vacuum;
	bool		av_enabled;
	float4		reltuples;		/* pg_class.reltuples */

	/* constants from reloptions or GUC variables */
	int			vac_base_thresh,
				anl_base_thresh;
	float4		vac_scale_factor,
				anl_scale_factor;

	/* thresholds calculated from above constants */
	float4		vacthresh,
				anlthresh;

	/* number of vacuum (resp. analyze) tuples at this time */
	float4		vactuples,
				anltuples;

	/* freeze parameters */
	int			freeze_max_age;
	int			multixact_freeze_max_age;
	TransactionId xidForceLimit;
	MultiXactId multiForceLimit;

	FUNC0(classForm != NULL);
	FUNC0(FUNC6(relid));

	/*
	 * Determine vacuum/analyze equation parameters.  We have two possible
	 * sources: the passed reloptions (which could be a main table or a toast
	 * table), or the autovacuum GUC variables.
	 */

	/* -1 in autovac setting means use plain vacuum_scale_factor */
	vac_scale_factor = (relopts && relopts->vacuum_scale_factor >= 0)
		? relopts->vacuum_scale_factor
		: autovacuum_vac_scale;

	vac_base_thresh = (relopts && relopts->vacuum_threshold >= 0)
		? relopts->vacuum_threshold
		: autovacuum_vac_thresh;

	anl_scale_factor = (relopts && relopts->analyze_scale_factor >= 0)
		? relopts->analyze_scale_factor
		: autovacuum_anl_scale;

	anl_base_thresh = (relopts && relopts->analyze_threshold >= 0)
		? relopts->analyze_threshold
		: autovacuum_anl_thresh;

	freeze_max_age = (relopts && relopts->freeze_max_age >= 0)
		? FUNC2(relopts->freeze_max_age, autovacuum_freeze_max_age)
		: autovacuum_freeze_max_age;

	multixact_freeze_max_age = (relopts && relopts->multixact_freeze_max_age >= 0)
		? FUNC2(relopts->multixact_freeze_max_age, effective_multixact_freeze_max_age)
		: effective_multixact_freeze_max_age;

	av_enabled = (relopts ? relopts->enabled : true);

	/* Force vacuum if table is at risk of wraparound */
	xidForceLimit = recentXid - freeze_max_age;
	if (xidForceLimit < FirstNormalTransactionId)
		xidForceLimit -= FirstNormalTransactionId;
	force_vacuum = (FUNC8(classForm->relfrozenxid) &&
					FUNC9(classForm->relfrozenxid,
										  xidForceLimit));
	if (!force_vacuum)
	{
		multiForceLimit = recentMulti - multixact_freeze_max_age;
		if (multiForceLimit < FirstMultiXactId)
			multiForceLimit -= FirstMultiXactId;
		force_vacuum = FUNC3(classForm->relminmxid) &&
			FUNC4(classForm->relminmxid, multiForceLimit);
	}
	*wraparound = force_vacuum;

	/* User disabled it in pg_class.reloptions?  (But ignore if at risk) */
	if (!av_enabled && !force_vacuum)
	{
		*doanalyze = false;
		*dovacuum = false;
		return;
	}

	/*
	 * If we found the table in the stats hash, and autovacuum is currently
	 * enabled, make a threshold-based decision whether to vacuum and/or
	 * analyze.  If autovacuum is currently disabled, we must be here for
	 * anti-wraparound vacuuming only, so don't vacuum (or analyze) anything
	 * that's not being forced.
	 */
	if (FUNC7(tabentry) && FUNC1())
	{
		reltuples = classForm->reltuples;
		vactuples = tabentry->n_dead_tuples;
		anltuples = tabentry->changes_since_analyze;

		vacthresh = (float4) vac_base_thresh + vac_scale_factor * reltuples;
		anlthresh = (float4) anl_base_thresh + anl_scale_factor * reltuples;

		/*
		 * Note that we don't need to take special consideration for stat
		 * reset, because if that happens, the last vacuum and analyze counts
		 * will be reset too.
		 */
		FUNC10(DEBUG3, "%s: vac: %.0f (threshold %.0f), anl: %.0f (threshold %.0f)",
			 FUNC5(classForm->relname),
			 vactuples, vacthresh, anltuples, anlthresh);

		/* Determine if this table needs vacuum or analyze. */
		*dovacuum = force_vacuum || (vactuples > vacthresh);
		*doanalyze = (anltuples > anlthresh);
	}
	else
	{
		/*
		 * Skip a table not found in stat hash, unless we have to force vacuum
		 * for anti-wrap purposes.  If it's not acted upon, there's no need to
		 * vacuum it.
		 */
		*dovacuum = force_vacuum;
		*doanalyze = false;
	}

	/* ANALYZE refuses to work with pg_statistic */
	if (relid == StatisticRelationId)
		*doanalyze = false;
}