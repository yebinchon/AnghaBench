
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dim1; int * values; } ;
struct TYPE_8__ {TYPE_1__ stxkeys; int stxstattarget; int stxname; int stxnamespace; int oid; } ;
struct TYPE_7__ {int types; int columns; int stattarget; int name; int schema; int statOid; } ;
typedef int SysScanDesc ;
typedef TYPE_2__ StatExtEntry ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_statistic_ext ;
typedef int Datum ;
typedef int ArrayType ;


 scalar_t__ ARR_DATA_PTR (int *) ;
 int* ARR_DIMS (int *) ;
 scalar_t__ ARR_ELEMTYPE (int *) ;
 scalar_t__ ARR_HASNULL (int *) ;
 int ARR_NDIM (int *) ;
 int Anum_pg_statistic_ext_stxkind ;
 int Anum_pg_statistic_ext_stxrelid ;
 int Assert (int) ;
 int BTEqualStrategyNumber ;
 scalar_t__ CHAROID ;
 int * DatumGetArrayTypeP (int ) ;
 int ERROR ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int * NIL ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int STATEXTOID ;
 char STATS_EXT_DEPENDENCIES ;
 char STATS_EXT_MCV ;
 char STATS_EXT_NDISTINCT ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int StatisticExtRelidIndexId ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int bms_add_member (int ,int ) ;
 int elog (int ,char*) ;
 int get_namespace_name (int ) ;
 int * lappend (int *,TYPE_2__*) ;
 int lappend_int (int ,int) ;
 TYPE_2__* palloc0 (int) ;
 int pstrdup (int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;

__attribute__((used)) static List *
fetch_statentries_for_relation(Relation pg_statext, Oid relid)
{
 SysScanDesc scan;
 ScanKeyData skey;
 HeapTuple htup;
 List *result = NIL;





 ScanKeyInit(&skey,
    Anum_pg_statistic_ext_stxrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(relid));

 scan = systable_beginscan(pg_statext, StatisticExtRelidIndexId, 1,
         ((void*)0), 1, &skey);

 while (HeapTupleIsValid(htup = systable_getnext(scan)))
 {
  StatExtEntry *entry;
  Datum datum;
  bool isnull;
  int i;
  ArrayType *arr;
  char *enabled;
  Form_pg_statistic_ext staForm;

  entry = palloc0(sizeof(StatExtEntry));
  staForm = (Form_pg_statistic_ext) GETSTRUCT(htup);
  entry->statOid = staForm->oid;
  entry->schema = get_namespace_name(staForm->stxnamespace);
  entry->name = pstrdup(NameStr(staForm->stxname));
  entry->stattarget = staForm->stxstattarget;
  for (i = 0; i < staForm->stxkeys.dim1; i++)
  {
   entry->columns = bms_add_member(entry->columns,
           staForm->stxkeys.values[i]);
  }


  datum = SysCacheGetAttr(STATEXTOID, htup,
        Anum_pg_statistic_ext_stxkind, &isnull);
  Assert(!isnull);
  arr = DatumGetArrayTypeP(datum);
  if (ARR_NDIM(arr) != 1 ||
   ARR_HASNULL(arr) ||
   ARR_ELEMTYPE(arr) != CHAROID)
   elog(ERROR, "stxkind is not a 1-D char array");
  enabled = (char *) ARR_DATA_PTR(arr);
  for (i = 0; i < ARR_DIMS(arr)[0]; i++)
  {
   Assert((enabled[i] == STATS_EXT_NDISTINCT) ||
       (enabled[i] == STATS_EXT_DEPENDENCIES) ||
       (enabled[i] == STATS_EXT_MCV));
   entry->types = lappend_int(entry->types, (int) enabled[i]);
  }

  result = lappend(result, entry);
 }

 systable_endscan(scan);

 return result;
}
