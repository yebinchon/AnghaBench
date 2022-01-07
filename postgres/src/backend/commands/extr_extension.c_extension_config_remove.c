
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int repl_val ;
typedef int repl_repl ;
typedef int repl_null ;
struct TYPE_8__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef TYPE_1__* HeapTuple ;
typedef int Datum ;
typedef int ArrayType ;


 scalar_t__ ARR_DATA_PTR (int *) ;
 int* ARR_DIMS (int *) ;
 scalar_t__ ARR_ELEMTYPE (int *) ;
 scalar_t__ ARR_HASNULL (int *) ;
 int* ARR_LBOUND (int *) ;
 int ARR_NDIM (int *) ;
 int Anum_pg_extension_extcondition ;
 int Anum_pg_extension_extconfig ;
 int Anum_pg_extension_oid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int * DatumGetArrayTypeP (int) ;
 int ERROR ;
 int ExtensionOidIndexId ;
 int ExtensionRelationId ;
 int F_OIDEQ ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int Natts_pg_extension ;
 scalar_t__ OIDOID ;
 int ObjectIdGetDatum (scalar_t__) ;
 int PointerGetDatum (int *) ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 scalar_t__ TEXTOID ;
 int * construct_array (int*,int,scalar_t__,int,int,char) ;
 int deconstruct_array (int *,scalar_t__,int,int,char,int**,int *,int*) ;
 int elog (int ,char*,...) ;
 int heap_getattr (TYPE_1__*,int,int ,int*) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int ,int*,int*,int*) ;
 int memset (int*,int,int) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
extension_config_remove(Oid extensionoid, Oid tableoid)
{
 Relation extRel;
 ScanKeyData key[1];
 SysScanDesc extScan;
 HeapTuple extTup;
 Datum arrayDatum;
 int arrayLength;
 int arrayIndex;
 bool isnull;
 Datum repl_val[Natts_pg_extension];
 bool repl_null[Natts_pg_extension];
 bool repl_repl[Natts_pg_extension];
 ArrayType *a;


 extRel = table_open(ExtensionRelationId, RowExclusiveLock);

 ScanKeyInit(&key[0],
    Anum_pg_extension_oid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(extensionoid));

 extScan = systable_beginscan(extRel, ExtensionOidIndexId, 1,
         ((void*)0), 1, key);

 extTup = systable_getnext(extScan);

 if (!HeapTupleIsValid(extTup))
  elog(ERROR, "could not find tuple for extension %u",
    extensionoid);


 arrayDatum = heap_getattr(extTup, Anum_pg_extension_extconfig,
         RelationGetDescr(extRel), &isnull);
 if (isnull)
 {

  a = ((void*)0);
  arrayLength = 0;
  arrayIndex = -1;
 }
 else
 {
  Oid *arrayData;
  int i;

  a = DatumGetArrayTypeP(arrayDatum);

  arrayLength = ARR_DIMS(a)[0];
  if (ARR_NDIM(a) != 1 ||
   ARR_LBOUND(a)[0] != 1 ||
   arrayLength < 0 ||
   ARR_HASNULL(a) ||
   ARR_ELEMTYPE(a) != OIDOID)
   elog(ERROR, "extconfig is not a 1-D Oid array");
  arrayData = (Oid *) ARR_DATA_PTR(a);

  arrayIndex = -1;

  for (i = 0; i < arrayLength; i++)
  {
   if (arrayData[i] == tableoid)
   {
    arrayIndex = i;
    break;
   }
  }
 }


 if (arrayIndex < 0)
 {
  systable_endscan(extScan);
  table_close(extRel, RowExclusiveLock);
  return;
 }


 memset(repl_val, 0, sizeof(repl_val));
 memset(repl_null, 0, sizeof(repl_null));
 memset(repl_repl, 0, sizeof(repl_repl));

 if (arrayLength <= 1)
 {

  repl_null[Anum_pg_extension_extconfig - 1] = 1;
 }
 else
 {

  Datum *dvalues;
  int nelems;
  int i;


  deconstruct_array(a, OIDOID, sizeof(Oid), 1, 'i',
        &dvalues, ((void*)0), &nelems);

  for (i = arrayIndex; i < arrayLength - 1; i++)
   dvalues[i] = dvalues[i + 1];

  a = construct_array(dvalues, arrayLength - 1,
       OIDOID, sizeof(Oid), 1, 'i');

  repl_val[Anum_pg_extension_extconfig - 1] = PointerGetDatum(a);
 }
 repl_repl[Anum_pg_extension_extconfig - 1] = 1;


 arrayDatum = heap_getattr(extTup, Anum_pg_extension_extcondition,
         RelationGetDescr(extRel), &isnull);
 if (isnull)
 {
  elog(ERROR, "extconfig and extcondition arrays do not match");
 }
 else
 {
  a = DatumGetArrayTypeP(arrayDatum);

  if (ARR_NDIM(a) != 1 ||
   ARR_LBOUND(a)[0] != 1 ||
   ARR_HASNULL(a) ||
   ARR_ELEMTYPE(a) != TEXTOID)
   elog(ERROR, "extcondition is not a 1-D text array");
  if (ARR_DIMS(a)[0] != arrayLength)
   elog(ERROR, "extconfig and extcondition arrays do not match");
 }

 if (arrayLength <= 1)
 {

  repl_null[Anum_pg_extension_extcondition - 1] = 1;
 }
 else
 {

  Datum *dvalues;
  int nelems;
  int i;


  deconstruct_array(a, TEXTOID, -1, 0, 'i',
        &dvalues, ((void*)0), &nelems);

  for (i = arrayIndex; i < arrayLength - 1; i++)
   dvalues[i] = dvalues[i + 1];

  a = construct_array(dvalues, arrayLength - 1,
       TEXTOID, -1, 0, 'i');

  repl_val[Anum_pg_extension_extcondition - 1] = PointerGetDatum(a);
 }
 repl_repl[Anum_pg_extension_extcondition - 1] = 1;

 extTup = heap_modify_tuple(extTup, RelationGetDescr(extRel),
          repl_val, repl_null, repl_repl);

 CatalogTupleUpdate(extRel, &extTup->t_self, extTup);

 systable_endscan(extScan);

 table_close(extRel, RowExclusiveLock);
}
