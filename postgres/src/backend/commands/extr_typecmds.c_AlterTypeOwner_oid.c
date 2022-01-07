
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ typtype; int typrelid; } ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_type ;


 int ATExecChangeOwner (int ,int ,int,int ) ;
 int AccessExclusiveLock ;
 int AlterTypeOwnerInternal (int ,int ) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int InvokeObjectPostAlterHook (int ,int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int RowExclusiveLock ;
 int SearchSysCache1 (int ,int ) ;
 int TYPEOID ;
 scalar_t__ TYPTYPE_COMPOSITE ;
 int TypeRelationId ;
 int changeDependencyOnOwner (int ,int ,int ) ;
 int elog (int ,char*,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
AlterTypeOwner_oid(Oid typeOid, Oid newOwnerId, bool hasDependEntry)
{
 Relation rel;
 HeapTuple tup;
 Form_pg_type typTup;

 rel = table_open(TypeRelationId, RowExclusiveLock);

 tup = SearchSysCache1(TYPEOID, ObjectIdGetDatum(typeOid));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for type %u", typeOid);
 typTup = (Form_pg_type) GETSTRUCT(tup);






 if (typTup->typtype == TYPTYPE_COMPOSITE)
  ATExecChangeOwner(typTup->typrelid, newOwnerId, 1, AccessExclusiveLock);
 else
  AlterTypeOwnerInternal(typeOid, newOwnerId);


 if (hasDependEntry)
  changeDependencyOnOwner(TypeRelationId, typeOid, newOwnerId);

 InvokeObjectPostAlterHook(TypeRelationId, typeOid, 0);

 ReleaseSysCache(tup);
 table_close(rel, RowExclusiveLock);
}
