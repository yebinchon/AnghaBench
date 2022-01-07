
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int AttrNumber ;


 int Assert (int) ;
 int BTEqualStrategyNumber ;
 int CHECK_FOR_INTERRUPTS () ;
 int F_OIDEQ ;
 int GetNewObjectId () ;
 int HeapTupleIsValid (int ) ;
 int IsBinaryUpgrade ;
 scalar_t__ IsBootstrapProcessingMode () ;
 int IsSystemRelation (int ) ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ RelationGetRelid (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SnapshotAny ;
 scalar_t__ TypeRelationId ;
 int systable_beginscan (int ,int ,int,int ,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;

Oid
GetNewOidWithIndex(Relation relation, Oid indexId, AttrNumber oidcolumn)
{
 Oid newOid;
 SysScanDesc scan;
 ScanKeyData key;
 bool collides;


 Assert(IsSystemRelation(relation));


 if (IsBootstrapProcessingMode())
  return GetNewObjectId();







 Assert(!IsBinaryUpgrade || RelationGetRelid(relation) != TypeRelationId);


 do
 {
  CHECK_FOR_INTERRUPTS();

  newOid = GetNewObjectId();

  ScanKeyInit(&key,
     oidcolumn,
     BTEqualStrategyNumber, F_OIDEQ,
     ObjectIdGetDatum(newOid));


  scan = systable_beginscan(relation, indexId, 1,
          SnapshotAny, 1, &key);

  collides = HeapTupleIsValid(systable_getnext(scan));

  systable_endscan(scan);
 } while (collides);

 return newOid;
}
