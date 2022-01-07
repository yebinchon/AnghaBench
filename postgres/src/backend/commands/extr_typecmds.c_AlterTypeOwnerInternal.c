
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int repl_repl ;
typedef int repl_null ;
struct TYPE_11__ {int typarray; int typowner; } ;
struct TYPE_10__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_type ;
typedef int Datum ;
typedef int Acl ;


 int Anum_pg_type_typacl ;
 int Anum_pg_type_typowner ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int DatumGetAclP (int ) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int Natts_pg_type ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int PointerGetDatum (int *) ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCacheCopy1 (int ,int ) ;
 int TYPEOID ;
 int TypeRelationId ;
 int * aclnewowner (int ,int ,int ) ;
 int elog (int ,char*,int ) ;
 int heap_getattr (TYPE_1__*,int,int ,int*) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int ,int *,int*,int*) ;
 int memset (int*,int,int) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
AlterTypeOwnerInternal(Oid typeOid, Oid newOwnerId)
{
 Relation rel;
 HeapTuple tup;
 Form_pg_type typTup;
 Datum repl_val[Natts_pg_type];
 bool repl_null[Natts_pg_type];
 bool repl_repl[Natts_pg_type];
 Acl *newAcl;
 Datum aclDatum;
 bool isNull;

 rel = table_open(TypeRelationId, RowExclusiveLock);

 tup = SearchSysCacheCopy1(TYPEOID, ObjectIdGetDatum(typeOid));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for type %u", typeOid);
 typTup = (Form_pg_type) GETSTRUCT(tup);

 memset(repl_null, 0, sizeof(repl_null));
 memset(repl_repl, 0, sizeof(repl_repl));

 repl_repl[Anum_pg_type_typowner - 1] = 1;
 repl_val[Anum_pg_type_typowner - 1] = ObjectIdGetDatum(newOwnerId);

 aclDatum = heap_getattr(tup,
       Anum_pg_type_typacl,
       RelationGetDescr(rel),
       &isNull);

 if (!isNull)
 {
  newAcl = aclnewowner(DatumGetAclP(aclDatum),
        typTup->typowner, newOwnerId);
  repl_repl[Anum_pg_type_typacl - 1] = 1;
  repl_val[Anum_pg_type_typacl - 1] = PointerGetDatum(newAcl);
 }

 tup = heap_modify_tuple(tup, RelationGetDescr(rel), repl_val, repl_null,
       repl_repl);

 CatalogTupleUpdate(rel, &tup->t_self, tup);


 if (OidIsValid(typTup->typarray))
  AlterTypeOwnerInternal(typTup->typarray, newOwnerId);


 table_close(rel, RowExclusiveLock);
}
