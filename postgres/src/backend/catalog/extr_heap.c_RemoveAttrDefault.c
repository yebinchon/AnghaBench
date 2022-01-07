
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int oid; } ;
struct TYPE_4__ {scalar_t__ objectSubId; int objectId; int classId; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_attrdef ;
typedef int DropBehavior ;
typedef int AttrNumber ;


 int Anum_pg_attrdef_adnum ;
 int Anum_pg_attrdef_adrelid ;
 int AttrDefaultIndexId ;
 int AttrDefaultRelationId ;
 int BTEqualStrategyNumber ;
 int ERROR ;
 int F_INT2EQ ;
 int F_OIDEQ ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int Int16GetDatum (int ) ;
 int ObjectIdGetDatum (int ) ;
 int PERFORM_DELETION_INTERNAL ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int elog (int ,char*,int ,int ) ;
 int performDeletion (TYPE_1__*,int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RemoveAttrDefault(Oid relid, AttrNumber attnum,
      DropBehavior behavior, bool complain, bool internal)
{
 Relation attrdef_rel;
 ScanKeyData scankeys[2];
 SysScanDesc scan;
 HeapTuple tuple;
 bool found = 0;

 attrdef_rel = table_open(AttrDefaultRelationId, RowExclusiveLock);

 ScanKeyInit(&scankeys[0],
    Anum_pg_attrdef_adrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(relid));
 ScanKeyInit(&scankeys[1],
    Anum_pg_attrdef_adnum,
    BTEqualStrategyNumber, F_INT2EQ,
    Int16GetDatum(attnum));

 scan = systable_beginscan(attrdef_rel, AttrDefaultIndexId, 1,
         ((void*)0), 2, scankeys);


 while (HeapTupleIsValid(tuple = systable_getnext(scan)))
 {
  ObjectAddress object;
  Form_pg_attrdef attrtuple = (Form_pg_attrdef) GETSTRUCT(tuple);

  object.classId = AttrDefaultRelationId;
  object.objectId = attrtuple->oid;
  object.objectSubId = 0;

  performDeletion(&object, behavior,
      internal ? PERFORM_DELETION_INTERNAL : 0);

  found = 1;
 }

 systable_endscan(scan);
 table_close(attrdef_rel, RowExclusiveLock);

 if (complain && !found)
  elog(ERROR, "could not find attrdef tuple for relation %u attnum %d",
    relid, attnum);
}
