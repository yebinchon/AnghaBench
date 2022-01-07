
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int repl_repl ;
typedef int repl_null ;
struct TYPE_11__ {int oid; int nspowner; int nspname; } ;
struct TYPE_10__ {scalar_t__ t_tableOid; int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_namespace ;
typedef int Datum ;
typedef scalar_t__ AclResult ;
typedef int Acl ;


 scalar_t__ ACLCHECK_NOT_OWNER ;
 scalar_t__ ACLCHECK_OK ;
 int ACL_CREATE ;
 int Anum_pg_namespace_nspacl ;
 int Anum_pg_namespace_nspowner ;
 int Assert (int) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int DatumGetAclP (int ) ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int GetUserId () ;
 int InvokeObjectPostAlterHook (scalar_t__,int ,int ) ;
 int MyDatabaseId ;
 int NAMESPACENAME ;
 int NameStr (int ) ;
 scalar_t__ NamespaceRelationId ;
 int Natts_pg_namespace ;
 int OBJECT_DATABASE ;
 int OBJECT_SCHEMA ;
 int ObjectIdGetDatum (int ) ;
 int PointerGetDatum (int *) ;
 int RelationGetDescr (int ) ;
 scalar_t__ RelationGetRelid (int ) ;
 int SysCacheGetAttr (int ,TYPE_1__*,int,int*) ;
 int aclcheck_error (scalar_t__,int ,int ) ;
 int * aclnewowner (int ,int ,int ) ;
 int changeDependencyOnOwner (scalar_t__,int ,int ) ;
 int check_is_member_of_role (int ,int ) ;
 int get_database_name (int ) ;
 int heap_freetuple (TYPE_1__*) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int ,int *,int*,int*) ;
 int memset (int*,int,int) ;
 scalar_t__ pg_database_aclcheck (int ,int ,int ) ;
 int pg_namespace_ownercheck (int ,int ) ;

__attribute__((used)) static void
AlterSchemaOwner_internal(HeapTuple tup, Relation rel, Oid newOwnerId)
{
 Form_pg_namespace nspForm;

 Assert(tup->t_tableOid == NamespaceRelationId);
 Assert(RelationGetRelid(rel) == NamespaceRelationId);

 nspForm = (Form_pg_namespace) GETSTRUCT(tup);





 if (nspForm->nspowner != newOwnerId)
 {
  Datum repl_val[Natts_pg_namespace];
  bool repl_null[Natts_pg_namespace];
  bool repl_repl[Natts_pg_namespace];
  Acl *newAcl;
  Datum aclDatum;
  bool isNull;
  HeapTuple newtuple;
  AclResult aclresult;


  if (!pg_namespace_ownercheck(nspForm->oid, GetUserId()))
   aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_SCHEMA,
         NameStr(nspForm->nspname));


  check_is_member_of_role(GetUserId(), newOwnerId);
  aclresult = pg_database_aclcheck(MyDatabaseId, GetUserId(),
           ACL_CREATE);
  if (aclresult != ACLCHECK_OK)
   aclcheck_error(aclresult, OBJECT_DATABASE,
         get_database_name(MyDatabaseId));

  memset(repl_null, 0, sizeof(repl_null));
  memset(repl_repl, 0, sizeof(repl_repl));

  repl_repl[Anum_pg_namespace_nspowner - 1] = 1;
  repl_val[Anum_pg_namespace_nspowner - 1] = ObjectIdGetDatum(newOwnerId);





  aclDatum = SysCacheGetAttr(NAMESPACENAME, tup,
           Anum_pg_namespace_nspacl,
           &isNull);
  if (!isNull)
  {
   newAcl = aclnewowner(DatumGetAclP(aclDatum),
         nspForm->nspowner, newOwnerId);
   repl_repl[Anum_pg_namespace_nspacl - 1] = 1;
   repl_val[Anum_pg_namespace_nspacl - 1] = PointerGetDatum(newAcl);
  }

  newtuple = heap_modify_tuple(tup, RelationGetDescr(rel), repl_val, repl_null, repl_repl);

  CatalogTupleUpdate(rel, &newtuple->t_self, newtuple);

  heap_freetuple(newtuple);


  changeDependencyOnOwner(NamespaceRelationId, nspForm->oid,
        newOwnerId);
 }

 InvokeObjectPostAlterHook(NamespaceRelationId,
         nspForm->oid, 0);
}
