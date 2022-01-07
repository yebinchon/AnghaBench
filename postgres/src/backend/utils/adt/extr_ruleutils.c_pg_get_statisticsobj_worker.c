
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int dim1; int * values; } ;
struct TYPE_10__ {int stxrelid; TYPE_1__ stxkeys; int stxname; int stxnamespace; } ;
struct TYPE_9__ {char* data; } ;
typedef TYPE_2__ StringInfoData ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_statistic_ext ;
typedef int Datum ;
typedef int AttrNumber ;
typedef int ArrayType ;


 scalar_t__ ARR_DATA_PTR (int *) ;
 int* ARR_DIMS (int *) ;
 scalar_t__ ARR_ELEMTYPE (int *) ;
 scalar_t__ ARR_HASNULL (int *) ;
 int ARR_NDIM (int *) ;
 int Anum_pg_statistic_ext_stxkind ;
 int Assert (int) ;
 scalar_t__ CHAROID ;
 int * DatumGetArrayTypeP (int ) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int NIL ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int STATEXTOID ;
 char STATS_EXT_DEPENDENCIES ;
 char STATS_EXT_MCV ;
 char STATS_EXT_NDISTINCT ;
 int SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int appendStringInfo (TYPE_2__*,char*,char*) ;
 int appendStringInfoChar (TYPE_2__*,char) ;
 int appendStringInfoString (TYPE_2__*,char*) ;
 int elog (int ,char*,...) ;
 char* generate_relation_name (int ,int ) ;
 char* get_attname (int ,int ,int) ;
 char* get_namespace_name (int ) ;
 int initStringInfo (TYPE_2__*) ;
 char* quote_identifier (char*) ;
 char* quote_qualified_identifier (char*,int ) ;

__attribute__((used)) static char *
pg_get_statisticsobj_worker(Oid statextid, bool missing_ok)
{
 Form_pg_statistic_ext statextrec;
 HeapTuple statexttup;
 StringInfoData buf;
 int colno;
 char *nsp;
 ArrayType *arr;
 char *enabled;
 Datum datum;
 bool isnull;
 bool ndistinct_enabled;
 bool dependencies_enabled;
 bool mcv_enabled;
 int i;

 statexttup = SearchSysCache1(STATEXTOID, ObjectIdGetDatum(statextid));

 if (!HeapTupleIsValid(statexttup))
 {
  if (missing_ok)
   return ((void*)0);
  elog(ERROR, "cache lookup failed for statistics object %u", statextid);
 }

 statextrec = (Form_pg_statistic_ext) GETSTRUCT(statexttup);

 initStringInfo(&buf);

 nsp = get_namespace_name(statextrec->stxnamespace);
 appendStringInfo(&buf, "CREATE STATISTICS %s",
      quote_qualified_identifier(nsp,
            NameStr(statextrec->stxname)));




 datum = SysCacheGetAttr(STATEXTOID, statexttup,
       Anum_pg_statistic_ext_stxkind, &isnull);
 Assert(!isnull);
 arr = DatumGetArrayTypeP(datum);
 if (ARR_NDIM(arr) != 1 ||
  ARR_HASNULL(arr) ||
  ARR_ELEMTYPE(arr) != CHAROID)
  elog(ERROR, "stxkind is not a 1-D char array");
 enabled = (char *) ARR_DATA_PTR(arr);

 ndistinct_enabled = 0;
 dependencies_enabled = 0;
 mcv_enabled = 0;

 for (i = 0; i < ARR_DIMS(arr)[0]; i++)
 {
  if (enabled[i] == STATS_EXT_NDISTINCT)
   ndistinct_enabled = 1;
  if (enabled[i] == STATS_EXT_DEPENDENCIES)
   dependencies_enabled = 1;
  if (enabled[i] == STATS_EXT_MCV)
   mcv_enabled = 1;
 }
 if (!ndistinct_enabled || !dependencies_enabled || !mcv_enabled)
 {
  bool gotone = 0;

  appendStringInfoString(&buf, " (");

  if (ndistinct_enabled)
  {
   appendStringInfoString(&buf, "ndistinct");
   gotone = 1;
  }

  if (dependencies_enabled)
  {
   appendStringInfo(&buf, "%sdependencies", gotone ? ", " : "");
   gotone = 1;
  }

  if (mcv_enabled)
   appendStringInfo(&buf, "%smcv", gotone ? ", " : "");

  appendStringInfoChar(&buf, ')');
 }

 appendStringInfoString(&buf, " ON ");

 for (colno = 0; colno < statextrec->stxkeys.dim1; colno++)
 {
  AttrNumber attnum = statextrec->stxkeys.values[colno];
  char *attname;

  if (colno > 0)
   appendStringInfoString(&buf, ", ");

  attname = get_attname(statextrec->stxrelid, attnum, 0);

  appendStringInfoString(&buf, quote_identifier(attname));
 }

 appendStringInfo(&buf, " FROM %s",
      generate_relation_name(statextrec->stxrelid, NIL));

 ReleaseSysCache(statexttup);

 return buf.data;
}
