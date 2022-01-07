
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int repl_repl ;
typedef int repl_null ;
struct TYPE_12__ {scalar_t__ attisdropped; } ;
struct TYPE_11__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_attribute ;
typedef int Datum ;
typedef int Acl ;


 int Anum_pg_attribute_attacl ;
 int Anum_pg_attribute_attrelid ;
 int AttributeRelationId ;
 int AttributeRelidNumIndexId ;
 int BTEqualStrategyNumber ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int DatumGetAclP (int ) ;
 int F_OIDEQ ;
 int GETSTRUCT (TYPE_1__*) ;
 scalar_t__ HeapTupleIsValid (TYPE_1__*) ;
 int Natts_pg_attribute ;
 int ObjectIdGetDatum (int ) ;
 int PointerGetDatum (int *) ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int * aclnewowner (int ,int ,int ) ;
 int heap_freetuple (TYPE_1__*) ;
 int heap_getattr (TYPE_1__*,int,int ,int*) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int ,int *,int*,int*) ;
 int memset (int*,int,int) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
change_owner_fix_column_acls(Oid relationOid, Oid oldOwnerId, Oid newOwnerId)
{
 Relation attRelation;
 SysScanDesc scan;
 ScanKeyData key[1];
 HeapTuple attributeTuple;

 attRelation = table_open(AttributeRelationId, RowExclusiveLock);
 ScanKeyInit(&key[0],
    Anum_pg_attribute_attrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(relationOid));
 scan = systable_beginscan(attRelation, AttributeRelidNumIndexId,
         1, ((void*)0), 1, key);
 while (HeapTupleIsValid(attributeTuple = systable_getnext(scan)))
 {
  Form_pg_attribute att = (Form_pg_attribute) GETSTRUCT(attributeTuple);
  Datum repl_val[Natts_pg_attribute];
  bool repl_null[Natts_pg_attribute];
  bool repl_repl[Natts_pg_attribute];
  Acl *newAcl;
  Datum aclDatum;
  bool isNull;
  HeapTuple newtuple;


  if (att->attisdropped)
   continue;

  aclDatum = heap_getattr(attributeTuple,
        Anum_pg_attribute_attacl,
        RelationGetDescr(attRelation),
        &isNull);

  if (isNull)
   continue;

  memset(repl_null, 0, sizeof(repl_null));
  memset(repl_repl, 0, sizeof(repl_repl));

  newAcl = aclnewowner(DatumGetAclP(aclDatum),
        oldOwnerId, newOwnerId);
  repl_repl[Anum_pg_attribute_attacl - 1] = 1;
  repl_val[Anum_pg_attribute_attacl - 1] = PointerGetDatum(newAcl);

  newtuple = heap_modify_tuple(attributeTuple,
          RelationGetDescr(attRelation),
          repl_val, repl_null, repl_repl);

  CatalogTupleUpdate(attRelation, &newtuple->t_self, newtuple);

  heap_freetuple(newtuple);
 }
 systable_endscan(scan);
 table_close(attRelation, RowExclusiveLock);
}
