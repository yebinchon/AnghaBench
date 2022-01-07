
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int values ;
typedef int replace ;
typedef int nulls ;
struct TYPE_9__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef int Datum ;
typedef int Acl ;


 int Anum_pg_init_privs_classoid ;
 int Anum_pg_init_privs_initprivs ;
 int Anum_pg_init_privs_objoid ;
 int Anum_pg_init_privs_objsubid ;
 int Anum_pg_init_privs_privtype ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int CatalogTupleInsert (int ,TYPE_1__*) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int CharGetDatum (int ) ;
 int CommandCounterIncrement () ;
 int F_INT4EQ ;
 int F_OIDEQ ;
 scalar_t__ HeapTupleIsValid (TYPE_1__*) ;
 int INITPRIVS_EXTENSION ;
 int InitPrivsObjIndexId ;
 int InitPrivsRelationId ;
 int Int32GetDatum (int) ;
 int MemSet (int*,int,int) ;
 int Natts_pg_init_privs ;
 int ObjectIdGetDatum (int ) ;
 int PointerGetDatum (int *) ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int,int ,int ,int) ;
 TYPE_1__* heap_form_tuple (int ,int*,int*) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int ,int*,int*,int*) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
recordExtensionInitPrivWorker(Oid objoid, Oid classoid, int objsubid, Acl *new_acl)
{
 Relation relation;
 ScanKeyData key[3];
 SysScanDesc scan;
 HeapTuple tuple;
 HeapTuple oldtuple;

 relation = table_open(InitPrivsRelationId, RowExclusiveLock);

 ScanKeyInit(&key[0],
    Anum_pg_init_privs_objoid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(objoid));
 ScanKeyInit(&key[1],
    Anum_pg_init_privs_classoid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(classoid));
 ScanKeyInit(&key[2],
    Anum_pg_init_privs_objsubid,
    BTEqualStrategyNumber, F_INT4EQ,
    Int32GetDatum(objsubid));

 scan = systable_beginscan(relation, InitPrivsObjIndexId, 1,
         ((void*)0), 3, key);


 oldtuple = systable_getnext(scan);


 if (HeapTupleIsValid(oldtuple))
 {
  Datum values[Natts_pg_init_privs];
  bool nulls[Natts_pg_init_privs];
  bool replace[Natts_pg_init_privs];


  if (new_acl)
  {
   MemSet(values, 0, sizeof(values));
   MemSet(nulls, 0, sizeof(nulls));
   MemSet(replace, 0, sizeof(replace));

   values[Anum_pg_init_privs_initprivs - 1] = PointerGetDatum(new_acl);
   replace[Anum_pg_init_privs_initprivs - 1] = 1;

   oldtuple = heap_modify_tuple(oldtuple, RelationGetDescr(relation),
           values, nulls, replace);

   CatalogTupleUpdate(relation, &oldtuple->t_self, oldtuple);
  }
  else
  {

   CatalogTupleDelete(relation, &oldtuple->t_self);
  }
 }
 else
 {
  Datum values[Natts_pg_init_privs];
  bool nulls[Natts_pg_init_privs];







  if (new_acl)
  {

   MemSet(nulls, 0, sizeof(nulls));

   values[Anum_pg_init_privs_objoid - 1] = ObjectIdGetDatum(objoid);
   values[Anum_pg_init_privs_classoid - 1] = ObjectIdGetDatum(classoid);
   values[Anum_pg_init_privs_objsubid - 1] = Int32GetDatum(objsubid);


   values[Anum_pg_init_privs_privtype - 1] =
    CharGetDatum(INITPRIVS_EXTENSION);

   values[Anum_pg_init_privs_initprivs - 1] = PointerGetDatum(new_acl);

   tuple = heap_form_tuple(RelationGetDescr(relation), values, nulls);

   CatalogTupleInsert(relation, tuple);
  }
 }

 systable_endscan(scan);


 CommandCounterIncrement();

 table_close(relation, RowExclusiveLock);
}
