#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_42__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TypeInfo ;
typedef  int /*<<< orphan*/  TableInfo ;
struct TYPE_42__ {int /*<<< orphan*/  dopt; } ;
typedef  int /*<<< orphan*/  OprInfo ;
typedef  int /*<<< orphan*/  NamespaceInfo ;
typedef  int /*<<< orphan*/  InhInfo ;
typedef  int /*<<< orphan*/  FuncInfo ;
typedef  int /*<<< orphan*/  ExtensionInfo ;
typedef  int /*<<< orphan*/  CollInfo ;
typedef  TYPE_1__ Archive ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 void* collinfoindex ; 
 void* extinfoindex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 void* funinfoindex ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC14 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/ * FUNC17 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC19 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/ * FUNC20 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/ * FUNC22 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC36 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC38 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC39 (TYPE_1__*,int*) ; 
 void* nspinfoindex ; 
 int numCollations ; 
 int numExtensions ; 
 int numFuncs ; 
 int numNamespaces ; 
 int numOperators ; 
 int numTables ; 
 int numTypes ; 
 void* oprinfoindex ; 
 int /*<<< orphan*/  FUNC40 (char*) ; 
 int /*<<< orphan*/  FUNC41 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 void* tblinfoindex ; 
 void* typinfoindex ; 

TableInfo *
FUNC42(Archive *fout, int *numTablesPtr)
{
	TableInfo  *tblinfo;
	TypeInfo   *typinfo;
	FuncInfo   *funinfo;
	OprInfo    *oprinfo;
	CollInfo   *collinfo;
	NamespaceInfo *nspinfo;
	ExtensionInfo *extinfo;
	InhInfo    *inhinfo;
	int			numAggregates;
	int			numInherits;
	int			numRules;
	int			numProcLangs;
	int			numCasts;
	int			numTransforms;
	int			numAccessMethods;
	int			numOpclasses;
	int			numOpfamilies;
	int			numConversions;
	int			numTSParsers;
	int			numTSTemplates;
	int			numTSDicts;
	int			numTSConfigs;
	int			numForeignDataWrappers;
	int			numForeignServers;
	int			numDefaultACLs;
	int			numEventTriggers;

	/*
	 * We must read extensions and extension membership info first, because
	 * extension membership needs to be consultable during decisions about
	 * whether other objects are to be dumped.
	 */
	FUNC40("reading extensions");
	extinfo = FUNC14(fout, &numExtensions);
	extinfoindex = FUNC0(extinfo, numExtensions, sizeof(ExtensionInfo));

	FUNC40("identifying extension members");
	FUNC13(fout, extinfo, numExtensions);

	FUNC40("reading schemas");
	nspinfo = FUNC20(fout, &numNamespaces);
	nspinfoindex = FUNC0(nspinfo, numNamespaces, sizeof(NamespaceInfo));

	/*
	 * getTables should be done as soon as possible, so as to minimize the
	 * window between starting our transaction and acquiring per-table locks.
	 * However, we have to do getNamespaces first because the tables get
	 * linked to their containing namespaces during getTables.
	 */
	FUNC40("reading user-defined tables");
	tblinfo = FUNC36(fout, &numTables);
	tblinfoindex = FUNC0(tblinfo, numTables, sizeof(TableInfo));

	/* Do this after we've built tblinfoindex */
	FUNC24(fout, tblinfo, numTables);

	FUNC40("reading user-defined functions");
	funinfo = FUNC17(fout, &numFuncs);
	funinfoindex = FUNC0(funinfo, numFuncs, sizeof(FuncInfo));

	/* this must be after getTables and getFuncs */
	FUNC40("reading user-defined types");
	typinfo = FUNC39(fout, &numTypes);
	typinfoindex = FUNC0(typinfo, numTypes, sizeof(TypeInfo));

	/* this must be after getFuncs, too */
	FUNC40("reading procedural languages");
	FUNC26(fout, &numProcLangs);

	FUNC40("reading user-defined aggregate functions");
	FUNC5(fout, &numAggregates);

	FUNC40("reading user-defined operators");
	oprinfo = FUNC22(fout, &numOperators);
	oprinfoindex = FUNC0(oprinfo, numOperators, sizeof(OprInfo));

	FUNC40("reading user-defined access methods");
	FUNC4(fout, &numAccessMethods);

	FUNC40("reading user-defined operator classes");
	FUNC21(fout, &numOpclasses);

	FUNC40("reading user-defined operator families");
	FUNC23(fout, &numOpfamilies);

	FUNC40("reading user-defined text search parsers");
	FUNC33(fout, &numTSParsers);

	FUNC40("reading user-defined text search templates");
	FUNC34(fout, &numTSTemplates);

	FUNC40("reading user-defined text search dictionaries");
	FUNC32(fout, &numTSDicts);

	FUNC40("reading user-defined text search configurations");
	FUNC31(fout, &numTSConfigs);

	FUNC40("reading user-defined foreign-data wrappers");
	FUNC15(fout, &numForeignDataWrappers);

	FUNC40("reading user-defined foreign servers");
	FUNC16(fout, &numForeignServers);

	FUNC40("reading default privileges");
	FUNC10(fout, &numDefaultACLs);

	FUNC40("reading user-defined collations");
	collinfo = FUNC7(fout, &numCollations);
	collinfoindex = FUNC0(collinfo, numCollations, sizeof(CollInfo));

	FUNC40("reading user-defined conversions");
	FUNC9(fout, &numConversions);

	FUNC40("reading type casts");
	FUNC6(fout, &numCasts);

	FUNC40("reading transforms");
	FUNC37(fout, &numTransforms);

	FUNC40("reading table inheritance information");
	inhinfo = FUNC19(fout, &numInherits);

	FUNC40("reading event triggers");
	FUNC11(fout, &numEventTriggers);

	/* Identify extension configuration tables that should be dumped */
	FUNC40("finding extension tables");
	FUNC41(fout, extinfo, numExtensions);

	/* Link tables to parents, mark parents of target tables interesting */
	FUNC40("finding inheritance relationships");
	FUNC3(fout, tblinfo, numTables, inhinfo, numInherits);

	FUNC40("reading column info for interesting tables");
	FUNC35(fout, tblinfo, numTables);

	FUNC40("flagging inherited columns in subtables");
	FUNC1(fout->dopt, tblinfo, numTables);

	FUNC40("reading indexes");
	FUNC18(fout, tblinfo, numTables);

	FUNC40("flagging indexes in partitioned tables");
	FUNC2(fout, tblinfo, numTables);

	FUNC40("reading extended statistics");
	FUNC12(fout);

	FUNC40("reading constraints");
	FUNC8(fout, tblinfo, numTables);

	FUNC40("reading triggers");
	FUNC38(fout, tblinfo, numTables);

	FUNC40("reading rewrite rules");
	FUNC29(fout, &numRules);

	FUNC40("reading policies");
	FUNC25(fout, tblinfo, numTables);

	FUNC40("reading publications");
	FUNC28(fout);

	FUNC40("reading publication membership");
	FUNC27(fout, tblinfo, numTables);

	FUNC40("reading subscriptions");
	FUNC30(fout);

	*numTablesPtr = numTables;
	return tblinfo;
}