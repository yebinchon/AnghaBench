
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_42__ TYPE_1__ ;


typedef int TypeInfo ;
typedef int TableInfo ;
struct TYPE_42__ {int dopt; } ;
typedef int OprInfo ;
typedef int NamespaceInfo ;
typedef int InhInfo ;
typedef int FuncInfo ;
typedef int ExtensionInfo ;
typedef int CollInfo ;
typedef TYPE_1__ Archive ;


 void* buildIndexArray (int *,int,int) ;
 void* collinfoindex ;
 void* extinfoindex ;
 int flagInhAttrs (int ,int *,int) ;
 int flagInhIndexes (TYPE_1__*,int *,int) ;
 int flagInhTables (TYPE_1__*,int *,int,int *,int) ;
 void* funinfoindex ;
 int getAccessMethods (TYPE_1__*,int*) ;
 int getAggregates (TYPE_1__*,int*) ;
 int getCasts (TYPE_1__*,int*) ;
 int * getCollations (TYPE_1__*,int*) ;
 int getConstraints (TYPE_1__*,int *,int) ;
 int getConversions (TYPE_1__*,int*) ;
 int getDefaultACLs (TYPE_1__*,int*) ;
 int getEventTriggers (TYPE_1__*,int*) ;
 int getExtendedStatistics (TYPE_1__*) ;
 int getExtensionMembership (TYPE_1__*,int *,int) ;
 int * getExtensions (TYPE_1__*,int*) ;
 int getForeignDataWrappers (TYPE_1__*,int*) ;
 int getForeignServers (TYPE_1__*,int*) ;
 int * getFuncs (TYPE_1__*,int*) ;
 int getIndexes (TYPE_1__*,int *,int) ;
 int * getInherits (TYPE_1__*,int*) ;
 int * getNamespaces (TYPE_1__*,int*) ;
 int getOpclasses (TYPE_1__*,int*) ;
 int * getOperators (TYPE_1__*,int*) ;
 int getOpfamilies (TYPE_1__*,int*) ;
 int getOwnedSeqs (TYPE_1__*,int *,int) ;
 int getPolicies (TYPE_1__*,int *,int) ;
 int getProcLangs (TYPE_1__*,int*) ;
 int getPublicationTables (TYPE_1__*,int *,int) ;
 int getPublications (TYPE_1__*) ;
 int getRules (TYPE_1__*,int*) ;
 int getSubscriptions (TYPE_1__*) ;
 int getTSConfigurations (TYPE_1__*,int*) ;
 int getTSDictionaries (TYPE_1__*,int*) ;
 int getTSParsers (TYPE_1__*,int*) ;
 int getTSTemplates (TYPE_1__*,int*) ;
 int getTableAttrs (TYPE_1__*,int *,int) ;
 int * getTables (TYPE_1__*,int*) ;
 int getTransforms (TYPE_1__*,int*) ;
 int getTriggers (TYPE_1__*,int *,int) ;
 int * getTypes (TYPE_1__*,int*) ;
 void* nspinfoindex ;
 int numCollations ;
 int numExtensions ;
 int numFuncs ;
 int numNamespaces ;
 int numOperators ;
 int numTables ;
 int numTypes ;
 void* oprinfoindex ;
 int pg_log_info (char*) ;
 int processExtensionTables (TYPE_1__*,int *,int) ;
 void* tblinfoindex ;
 void* typinfoindex ;

TableInfo *
getSchemaData(Archive *fout, int *numTablesPtr)
{
 TableInfo *tblinfo;
 TypeInfo *typinfo;
 FuncInfo *funinfo;
 OprInfo *oprinfo;
 CollInfo *collinfo;
 NamespaceInfo *nspinfo;
 ExtensionInfo *extinfo;
 InhInfo *inhinfo;
 int numAggregates;
 int numInherits;
 int numRules;
 int numProcLangs;
 int numCasts;
 int numTransforms;
 int numAccessMethods;
 int numOpclasses;
 int numOpfamilies;
 int numConversions;
 int numTSParsers;
 int numTSTemplates;
 int numTSDicts;
 int numTSConfigs;
 int numForeignDataWrappers;
 int numForeignServers;
 int numDefaultACLs;
 int numEventTriggers;






 pg_log_info("reading extensions");
 extinfo = getExtensions(fout, &numExtensions);
 extinfoindex = buildIndexArray(extinfo, numExtensions, sizeof(ExtensionInfo));

 pg_log_info("identifying extension members");
 getExtensionMembership(fout, extinfo, numExtensions);

 pg_log_info("reading schemas");
 nspinfo = getNamespaces(fout, &numNamespaces);
 nspinfoindex = buildIndexArray(nspinfo, numNamespaces, sizeof(NamespaceInfo));







 pg_log_info("reading user-defined tables");
 tblinfo = getTables(fout, &numTables);
 tblinfoindex = buildIndexArray(tblinfo, numTables, sizeof(TableInfo));


 getOwnedSeqs(fout, tblinfo, numTables);

 pg_log_info("reading user-defined functions");
 funinfo = getFuncs(fout, &numFuncs);
 funinfoindex = buildIndexArray(funinfo, numFuncs, sizeof(FuncInfo));


 pg_log_info("reading user-defined types");
 typinfo = getTypes(fout, &numTypes);
 typinfoindex = buildIndexArray(typinfo, numTypes, sizeof(TypeInfo));


 pg_log_info("reading procedural languages");
 getProcLangs(fout, &numProcLangs);

 pg_log_info("reading user-defined aggregate functions");
 getAggregates(fout, &numAggregates);

 pg_log_info("reading user-defined operators");
 oprinfo = getOperators(fout, &numOperators);
 oprinfoindex = buildIndexArray(oprinfo, numOperators, sizeof(OprInfo));

 pg_log_info("reading user-defined access methods");
 getAccessMethods(fout, &numAccessMethods);

 pg_log_info("reading user-defined operator classes");
 getOpclasses(fout, &numOpclasses);

 pg_log_info("reading user-defined operator families");
 getOpfamilies(fout, &numOpfamilies);

 pg_log_info("reading user-defined text search parsers");
 getTSParsers(fout, &numTSParsers);

 pg_log_info("reading user-defined text search templates");
 getTSTemplates(fout, &numTSTemplates);

 pg_log_info("reading user-defined text search dictionaries");
 getTSDictionaries(fout, &numTSDicts);

 pg_log_info("reading user-defined text search configurations");
 getTSConfigurations(fout, &numTSConfigs);

 pg_log_info("reading user-defined foreign-data wrappers");
 getForeignDataWrappers(fout, &numForeignDataWrappers);

 pg_log_info("reading user-defined foreign servers");
 getForeignServers(fout, &numForeignServers);

 pg_log_info("reading default privileges");
 getDefaultACLs(fout, &numDefaultACLs);

 pg_log_info("reading user-defined collations");
 collinfo = getCollations(fout, &numCollations);
 collinfoindex = buildIndexArray(collinfo, numCollations, sizeof(CollInfo));

 pg_log_info("reading user-defined conversions");
 getConversions(fout, &numConversions);

 pg_log_info("reading type casts");
 getCasts(fout, &numCasts);

 pg_log_info("reading transforms");
 getTransforms(fout, &numTransforms);

 pg_log_info("reading table inheritance information");
 inhinfo = getInherits(fout, &numInherits);

 pg_log_info("reading event triggers");
 getEventTriggers(fout, &numEventTriggers);


 pg_log_info("finding extension tables");
 processExtensionTables(fout, extinfo, numExtensions);


 pg_log_info("finding inheritance relationships");
 flagInhTables(fout, tblinfo, numTables, inhinfo, numInherits);

 pg_log_info("reading column info for interesting tables");
 getTableAttrs(fout, tblinfo, numTables);

 pg_log_info("flagging inherited columns in subtables");
 flagInhAttrs(fout->dopt, tblinfo, numTables);

 pg_log_info("reading indexes");
 getIndexes(fout, tblinfo, numTables);

 pg_log_info("flagging indexes in partitioned tables");
 flagInhIndexes(fout, tblinfo, numTables);

 pg_log_info("reading extended statistics");
 getExtendedStatistics(fout);

 pg_log_info("reading constraints");
 getConstraints(fout, tblinfo, numTables);

 pg_log_info("reading triggers");
 getTriggers(fout, tblinfo, numTables);

 pg_log_info("reading rewrite rules");
 getRules(fout, &numRules);

 pg_log_info("reading policies");
 getPolicies(fout, tblinfo, numTables);

 pg_log_info("reading publications");
 getPublications(fout);

 pg_log_info("reading publication membership");
 getPublicationTables(fout, tblinfo, numTables);

 pg_log_info("reading subscriptions");
 getSubscriptions(fout);

 *numTablesPtr = numTables;
 return tblinfo;
}
