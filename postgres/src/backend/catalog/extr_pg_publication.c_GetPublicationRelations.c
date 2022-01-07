
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prrelid; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_publication_rel ;


 int AccessShareLock ;
 int Anum_pg_publication_rel_prpubid ;
 int BTEqualStrategyNumber ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int * NIL ;
 int ObjectIdGetDatum (int ) ;
 int PublicationRelPrrelidPrpubidIndexId ;
 int PublicationRelRelationId ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int * lappend_oid (int *,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

List *
GetPublicationRelations(Oid pubid)
{
 List *result;
 Relation pubrelsrel;
 ScanKeyData scankey;
 SysScanDesc scan;
 HeapTuple tup;


 pubrelsrel = table_open(PublicationRelRelationId, AccessShareLock);

 ScanKeyInit(&scankey,
    Anum_pg_publication_rel_prpubid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(pubid));

 scan = systable_beginscan(pubrelsrel, PublicationRelPrrelidPrpubidIndexId,
         1, ((void*)0), 1, &scankey);

 result = NIL;
 while (HeapTupleIsValid(tup = systable_getnext(scan)))
 {
  Form_pg_publication_rel pubrel;

  pubrel = (Form_pg_publication_rel) GETSTRUCT(tup);

  result = lappend_oid(result, pubrel->prrelid);
 }

 systable_endscan(scan);
 table_close(pubrelsrel, AccessShareLock);

 return result;
}
