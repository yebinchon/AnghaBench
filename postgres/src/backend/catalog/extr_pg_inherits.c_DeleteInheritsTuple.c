
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ inhparent; } ;
struct TYPE_6__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_inherits ;


 int Anum_pg_inherits_inhrelid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 scalar_t__ HeapTupleIsValid (TYPE_1__*) ;
 int InheritsRelationId ;
 int InheritsRelidSeqnoIndexId ;
 int ObjectIdGetDatum (scalar_t__) ;
 int OidIsValid (scalar_t__) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

bool
DeleteInheritsTuple(Oid inhrelid, Oid inhparent)
{
 bool found = 0;
 Relation catalogRelation;
 ScanKeyData key;
 SysScanDesc scan;
 HeapTuple inheritsTuple;




 catalogRelation = table_open(InheritsRelationId, RowExclusiveLock);
 ScanKeyInit(&key,
    Anum_pg_inherits_inhrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(inhrelid));
 scan = systable_beginscan(catalogRelation, InheritsRelidSeqnoIndexId,
         1, ((void*)0), 1, &key);

 while (HeapTupleIsValid(inheritsTuple = systable_getnext(scan)))
 {
  Oid parent;


  parent = ((Form_pg_inherits) GETSTRUCT(inheritsTuple))->inhparent;
  if (!OidIsValid(inhparent) || parent == inhparent)
  {
   CatalogTupleDelete(catalogRelation, &inheritsTuple->t_self);
   found = 1;
  }
 }


 systable_endscan(scan);
 table_close(catalogRelation, RowExclusiveLock);

 return found;
}
