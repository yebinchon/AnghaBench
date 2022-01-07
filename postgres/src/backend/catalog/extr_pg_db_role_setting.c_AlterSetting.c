
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int repl_repl ;
typedef int nulls ;
struct TYPE_13__ {scalar_t__ kind; int name; } ;
typedef TYPE_1__ VariableSetStmt ;
struct TYPE_14__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_2__* HeapTuple ;
typedef int Datum ;
typedef int ArrayType ;


 int Anum_pg_db_role_setting_setconfig ;
 int Anum_pg_db_role_setting_setdatabase ;
 int Anum_pg_db_role_setting_setrole ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int CatalogTupleInsert (int ,TYPE_2__*) ;
 int CatalogTupleUpdate (int ,int *,TYPE_2__*) ;
 int * DatumGetArrayTypeP (int ) ;
 int DbRoleSettingDatidRolidIndexId ;
 int DbRoleSettingRelationId ;
 char* ExtractSetVariableArgs (TYPE_1__*) ;
 int F_OIDEQ ;
 int * GUCArrayAdd (int *,int ,char*) ;
 int * GUCArrayDelete (int *,int ) ;
 int * GUCArrayReset (int *) ;
 scalar_t__ HeapTupleIsValid (TYPE_2__*) ;
 int InvokeObjectPostAlterHookArg (int ,int ,int ,int ,int) ;
 int Natts_pg_db_role_setting ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 int PointerGetDatum (int *) ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int,int ,int ,int ) ;
 scalar_t__ VAR_RESET_ALL ;
 TYPE_2__* heap_form_tuple (int ,int *,int*) ;
 int heap_getattr (TYPE_2__*,int,int ,int*) ;
 TYPE_2__* heap_modify_tuple (TYPE_2__*,int ,int *,int*,int*) ;
 int memset (int*,int,int) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_2__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
AlterSetting(Oid databaseid, Oid roleid, VariableSetStmt *setstmt)
{
 char *valuestr;
 HeapTuple tuple;
 Relation rel;
 ScanKeyData scankey[2];
 SysScanDesc scan;

 valuestr = ExtractSetVariableArgs(setstmt);



 rel = table_open(DbRoleSettingRelationId, RowExclusiveLock);
 ScanKeyInit(&scankey[0],
    Anum_pg_db_role_setting_setdatabase,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(databaseid));
 ScanKeyInit(&scankey[1],
    Anum_pg_db_role_setting_setrole,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(roleid));
 scan = systable_beginscan(rel, DbRoleSettingDatidRolidIndexId, 1,
         ((void*)0), 2, scankey);
 tuple = systable_getnext(scan);
 if (setstmt->kind == VAR_RESET_ALL)
 {
  if (HeapTupleIsValid(tuple))
  {
   ArrayType *new = ((void*)0);
   Datum datum;
   bool isnull;

   datum = heap_getattr(tuple, Anum_pg_db_role_setting_setconfig,
         RelationGetDescr(rel), &isnull);

   if (!isnull)
    new = GUCArrayReset(DatumGetArrayTypeP(datum));

   if (new)
   {
    Datum repl_val[Natts_pg_db_role_setting];
    bool repl_null[Natts_pg_db_role_setting];
    bool repl_repl[Natts_pg_db_role_setting];
    HeapTuple newtuple;

    memset(repl_repl, 0, sizeof(repl_repl));

    repl_val[Anum_pg_db_role_setting_setconfig - 1] =
     PointerGetDatum(new);
    repl_repl[Anum_pg_db_role_setting_setconfig - 1] = 1;
    repl_null[Anum_pg_db_role_setting_setconfig - 1] = 0;

    newtuple = heap_modify_tuple(tuple, RelationGetDescr(rel),
            repl_val, repl_null, repl_repl);
    CatalogTupleUpdate(rel, &tuple->t_self, newtuple);
   }
   else
    CatalogTupleDelete(rel, &tuple->t_self);
  }
 }
 else if (HeapTupleIsValid(tuple))
 {
  Datum repl_val[Natts_pg_db_role_setting];
  bool repl_null[Natts_pg_db_role_setting];
  bool repl_repl[Natts_pg_db_role_setting];
  HeapTuple newtuple;
  Datum datum;
  bool isnull;
  ArrayType *a;

  memset(repl_repl, 0, sizeof(repl_repl));
  repl_repl[Anum_pg_db_role_setting_setconfig - 1] = 1;
  repl_null[Anum_pg_db_role_setting_setconfig - 1] = 0;


  datum = heap_getattr(tuple, Anum_pg_db_role_setting_setconfig,
        RelationGetDescr(rel), &isnull);
  a = isnull ? ((void*)0) : DatumGetArrayTypeP(datum);


  if (valuestr)
   a = GUCArrayAdd(a, setstmt->name, valuestr);
  else
   a = GUCArrayDelete(a, setstmt->name);

  if (a)
  {
   repl_val[Anum_pg_db_role_setting_setconfig - 1] =
    PointerGetDatum(a);

   newtuple = heap_modify_tuple(tuple, RelationGetDescr(rel),
           repl_val, repl_null, repl_repl);
   CatalogTupleUpdate(rel, &tuple->t_self, newtuple);
  }
  else
   CatalogTupleDelete(rel, &tuple->t_self);
 }
 else if (valuestr)
 {

  HeapTuple newtuple;
  Datum values[Natts_pg_db_role_setting];
  bool nulls[Natts_pg_db_role_setting];
  ArrayType *a;

  memset(nulls, 0, sizeof(nulls));

  a = GUCArrayAdd(((void*)0), setstmt->name, valuestr);

  values[Anum_pg_db_role_setting_setdatabase - 1] =
   ObjectIdGetDatum(databaseid);
  values[Anum_pg_db_role_setting_setrole - 1] = ObjectIdGetDatum(roleid);
  values[Anum_pg_db_role_setting_setconfig - 1] = PointerGetDatum(a);
  newtuple = heap_form_tuple(RelationGetDescr(rel), values, nulls);

  CatalogTupleInsert(rel, newtuple);
 }

 InvokeObjectPostAlterHookArg(DbRoleSettingRelationId,
         databaseid, 0, roleid, 0);

 systable_endscan(scan);


 table_close(rel, NoLock);
}
