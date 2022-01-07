
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_publication ;


 int AccessShareLock ;
 int Anum_pg_publication_puballtables ;
 int BTEqualStrategyNumber ;
 int BoolGetDatum (int) ;
 int F_BOOLEQ ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int * NIL ;
 int PublicationRelationId ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int * lappend_oid (int *,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

List *
GetAllTablesPublications(void)
{
 List *result;
 Relation rel;
 ScanKeyData scankey;
 SysScanDesc scan;
 HeapTuple tup;


 rel = table_open(PublicationRelationId, AccessShareLock);

 ScanKeyInit(&scankey,
    Anum_pg_publication_puballtables,
    BTEqualStrategyNumber, F_BOOLEQ,
    BoolGetDatum(1));

 scan = systable_beginscan(rel, InvalidOid, 0,
         ((void*)0), 1, &scankey);

 result = NIL;
 while (HeapTupleIsValid(tup = systable_getnext(scan)))
 {
  Oid oid = ((Form_pg_publication) GETSTRUCT(tup))->oid;

  result = lappend_oid(result, oid);
 }

 systable_endscan(scan);
 table_close(rel, AccessShareLock);

 return result;
}
