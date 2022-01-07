
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_5__ {int relname; int schemaname; scalar_t__ catalogname; } ;
typedef TYPE_1__ RangeVar ;
typedef scalar_t__ Oid ;
typedef int LOCKMODE ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_NOT_OWNER ;
 scalar_t__ ACLCHECK_OK ;
 int ACL_CREATE ;
 int AccessShareLock ;
 int Assert (scalar_t__) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int GetUserId () ;
 scalar_t__ InvalidOid ;
 scalar_t__ IsBootstrapProcessingMode () ;
 int LockDatabaseObject (int ,scalar_t__,int ,int ) ;
 int LockRelationOid (scalar_t__,int ) ;
 int MyDatabaseId ;
 int NamespaceRelationId ;
 int NoLock ;
 int OBJECT_SCHEMA ;
 scalar_t__ OidIsValid (scalar_t__) ;
 int RangeVarAdjustRelationPersistence (TYPE_1__*,scalar_t__) ;
 scalar_t__ RangeVarGetCreationNamespace (TYPE_1__*) ;
 scalar_t__ SharedInvalidMessageCounter ;
 int UnlockDatabaseObject (int ,scalar_t__,int ,int ) ;
 int UnlockRelationOid (scalar_t__,int ) ;
 int aclcheck_error (scalar_t__,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,scalar_t__,int ,int ) ;
 int get_database_name (int ) ;
 int get_namespace_name (scalar_t__) ;
 int get_rel_relkind (scalar_t__) ;
 int get_relkind_objtype (int ) ;
 scalar_t__ get_relname_relid (int ,scalar_t__) ;
 int pg_class_ownercheck (scalar_t__,int ) ;
 scalar_t__ pg_namespace_aclcheck (scalar_t__,int ,int ) ;
 scalar_t__ strcmp (scalar_t__,int ) ;

Oid
RangeVarGetAndCheckCreationNamespace(RangeVar *relation,
          LOCKMODE lockmode,
          Oid *existing_relation_id)
{
 uint64 inval_count;
 Oid relid;
 Oid oldrelid = InvalidOid;
 Oid nspid;
 Oid oldnspid = InvalidOid;
 bool retry = 0;




 if (relation->catalogname)
 {
  if (strcmp(relation->catalogname, get_database_name(MyDatabaseId)) != 0)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cross-database references are not implemented: \"%s.%s.%s\"",
       relation->catalogname, relation->schemaname,
       relation->relname)));
 }







 for (;;)
 {
  AclResult aclresult;

  inval_count = SharedInvalidMessageCounter;


  nspid = RangeVarGetCreationNamespace(relation);
  Assert(OidIsValid(nspid));
  if (existing_relation_id != ((void*)0))
   relid = get_relname_relid(relation->relname, nspid);
  else
   relid = InvalidOid;






  if (IsBootstrapProcessingMode())
   break;


  aclresult = pg_namespace_aclcheck(nspid, GetUserId(), ACL_CREATE);
  if (aclresult != ACLCHECK_OK)
   aclcheck_error(aclresult, OBJECT_SCHEMA,
         get_namespace_name(nspid));

  if (retry)
  {

   if (relid == oldrelid && nspid == oldnspid)
    break;

   if (nspid != oldnspid)
    UnlockDatabaseObject(NamespaceRelationId, oldnspid, 0,
          AccessShareLock);

   if (relid != oldrelid && OidIsValid(oldrelid) && lockmode != NoLock)
    UnlockRelationOid(oldrelid, lockmode);
  }


  if (nspid != oldnspid)
   LockDatabaseObject(NamespaceRelationId, nspid, 0, AccessShareLock);


  if (lockmode != NoLock && OidIsValid(relid))
  {
   if (!pg_class_ownercheck(relid, GetUserId()))
    aclcheck_error(ACLCHECK_NOT_OWNER, get_relkind_objtype(get_rel_relkind(relid)),
          relation->relname);
   if (relid != oldrelid)
    LockRelationOid(relid, lockmode);
  }


  if (inval_count == SharedInvalidMessageCounter)
   break;


  retry = 1;
  oldrelid = relid;
  oldnspid = nspid;
 }

 RangeVarAdjustRelationPersistence(relation, nspid);
 if (existing_relation_id != ((void*)0))
  *existing_relation_id = relid;
 return nspid;
}
