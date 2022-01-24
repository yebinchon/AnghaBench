#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
struct TYPE_15__ {void* oid; void* tableoid; } ;
struct TYPE_14__ {int /*<<< orphan*/  dumpId; int /*<<< orphan*/  dump; int /*<<< orphan*/  namespace; TYPE_1__ catId; int /*<<< orphan*/  name; int /*<<< orphan*/  objType; } ;
struct TYPE_19__ {scalar_t__ relkind; TYPE_11__ dobj; } ;
struct TYPE_18__ {int remoteVersion; } ;
struct TYPE_17__ {int /*<<< orphan*/  data; } ;
struct TYPE_16__ {char ev_type; int is_instead; char ev_enabled; int separate; TYPE_7__* ruletable; TYPE_11__ dobj; } ;
typedef  TYPE_2__ RuleInfo ;
typedef  TYPE_3__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  void* Oid ;
typedef  TYPE_4__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_11__*) ; 
 int /*<<< orphan*/  DO_RULE ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ RELKIND_MATVIEW ; 
 scalar_t__ RELKIND_VIEW ; 
 int /*<<< orphan*/  FUNC6 (TYPE_11__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*) ; 
 void* FUNC8 (char*) ; 
 TYPE_3__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,void*,void*) ; 
 TYPE_7__* FUNC12 (void*) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

RuleInfo *
FUNC15(Archive *fout, int *numRules)
{
	PGresult   *res;
	int			ntups;
	int			i;
	PQExpBuffer query = FUNC9();
	RuleInfo   *ruleinfo;
	int			i_tableoid;
	int			i_oid;
	int			i_rulename;
	int			i_ruletable;
	int			i_ev_type;
	int			i_is_instead;
	int			i_ev_enabled;

	if (fout->remoteVersion >= 80300)
	{
		FUNC7(query, "SELECT "
							 "tableoid, oid, rulename, "
							 "ev_class AS ruletable, ev_type, is_instead, "
							 "ev_enabled "
							 "FROM pg_rewrite "
							 "ORDER BY oid");
	}
	else
	{
		FUNC7(query, "SELECT "
							 "tableoid, oid, rulename, "
							 "ev_class AS ruletable, ev_type, is_instead, "
							 "'O'::char AS ev_enabled "
							 "FROM pg_rewrite "
							 "ORDER BY oid");
	}

	res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

	ntups = FUNC5(res);

	*numRules = ntups;

	ruleinfo = (RuleInfo *) FUNC13(ntups * sizeof(RuleInfo));

	i_tableoid = FUNC3(res, "tableoid");
	i_oid = FUNC3(res, "oid");
	i_rulename = FUNC3(res, "rulename");
	i_ruletable = FUNC3(res, "ruletable");
	i_ev_type = FUNC3(res, "ev_type");
	i_is_instead = FUNC3(res, "is_instead");
	i_ev_enabled = FUNC3(res, "ev_enabled");

	for (i = 0; i < ntups; i++)
	{
		Oid			ruletableoid;

		ruleinfo[i].dobj.objType = DO_RULE;
		ruleinfo[i].dobj.catId.tableoid = FUNC8(FUNC4(res, i, i_tableoid));
		ruleinfo[i].dobj.catId.oid = FUNC8(FUNC4(res, i, i_oid));
		FUNC0(&ruleinfo[i].dobj);
		ruleinfo[i].dobj.name = FUNC14(FUNC4(res, i, i_rulename));
		ruletableoid = FUNC8(FUNC4(res, i, i_ruletable));
		ruleinfo[i].ruletable = FUNC12(ruletableoid);
		if (ruleinfo[i].ruletable == NULL)
			FUNC11("failed sanity check, parent table with OID %u of pg_rewrite entry with OID %u not found",
				  ruletableoid, ruleinfo[i].dobj.catId.oid);
		ruleinfo[i].dobj.namespace = ruleinfo[i].ruletable->dobj.namespace;
		ruleinfo[i].dobj.dump = ruleinfo[i].ruletable->dobj.dump;
		ruleinfo[i].ev_type = *(FUNC4(res, i, i_ev_type));
		ruleinfo[i].is_instead = *(FUNC4(res, i, i_is_instead)) == 't';
		ruleinfo[i].ev_enabled = *(FUNC4(res, i, i_ev_enabled));
		if (ruleinfo[i].ruletable)
		{
			/*
			 * If the table is a view or materialized view, force its ON
			 * SELECT rule to be sorted before the view itself --- this
			 * ensures that any dependencies for the rule affect the table's
			 * positioning. Other rules are forced to appear after their
			 * table.
			 */
			if ((ruleinfo[i].ruletable->relkind == RELKIND_VIEW ||
				 ruleinfo[i].ruletable->relkind == RELKIND_MATVIEW) &&
				ruleinfo[i].ev_type == '1' && ruleinfo[i].is_instead)
			{
				FUNC6(&ruleinfo[i].ruletable->dobj,
									ruleinfo[i].dobj.dumpId);
				/* We'll merge the rule into CREATE VIEW, if possible */
				ruleinfo[i].separate = false;
			}
			else
			{
				FUNC6(&ruleinfo[i].dobj,
									ruleinfo[i].ruletable->dobj.dumpId);
				ruleinfo[i].separate = true;
			}
		}
		else
			ruleinfo[i].separate = true;
	}

	FUNC2(res);

	FUNC10(query);

	return ruleinfo;
}