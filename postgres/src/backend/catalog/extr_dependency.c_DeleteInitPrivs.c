
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int t_self; } ;
struct TYPE_6__ {int objectSubId; int classId; int objectId; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef TYPE_1__ ObjectAddress ;
typedef TYPE_2__* HeapTuple ;


 int Anum_pg_init_privs_classoid ;
 int Anum_pg_init_privs_objoid ;
 int Anum_pg_init_privs_objsubid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int F_INT4EQ ;
 int F_OIDEQ ;
 scalar_t__ HeapTupleIsValid (TYPE_2__*) ;
 int InitPrivsObjIndexId ;
 int InitPrivsRelationId ;
 int Int32GetDatum (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_2__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
DeleteInitPrivs(const ObjectAddress *object)
{
 Relation relation;
 ScanKeyData key[3];
 SysScanDesc scan;
 HeapTuple oldtuple;

 relation = table_open(InitPrivsRelationId, RowExclusiveLock);

 ScanKeyInit(&key[0],
    Anum_pg_init_privs_objoid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(object->objectId));
 ScanKeyInit(&key[1],
    Anum_pg_init_privs_classoid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(object->classId));
 ScanKeyInit(&key[2],
    Anum_pg_init_privs_objsubid,
    BTEqualStrategyNumber, F_INT4EQ,
    Int32GetDatum(object->objectSubId));

 scan = systable_beginscan(relation, InitPrivsObjIndexId, 1,
         ((void*)0), 3, key);

 while (HeapTupleIsValid(oldtuple = systable_getnext(scan)))
  CatalogTupleDelete(relation, &oldtuple->t_self);

 systable_endscan(scan);

 table_close(relation, RowExclusiveLock);
}
