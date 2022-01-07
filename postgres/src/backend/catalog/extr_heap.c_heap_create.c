
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TupleDesc ;
typedef int TransactionId ;
struct TYPE_8__ {int rd_node; TYPE_1__* rd_rel; } ;
struct TYPE_7__ {int relkind; } ;
typedef TYPE_2__* Relation ;
typedef scalar_t__ Oid ;
typedef int MultiXactId ;


 int Assert (int) ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 int InvalidMultiXactId ;
 scalar_t__ InvalidOid ;
 int InvalidTransactionId ;
 scalar_t__ IsCatalogNamespace (scalar_t__) ;
 scalar_t__ IsNormalProcessingMode () ;
 scalar_t__ IsToastNamespace (scalar_t__) ;
 scalar_t__ MyDatabaseTableSpace ;
 int OidIsValid (scalar_t__) ;


 int RELKIND_HAS_STORAGE (char) ;
 TYPE_2__* RelationBuildLocalRelation (char const*,scalar_t__,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,char,char) ;
 int RelationCreateStorage (int ,char) ;
 int RelationOpenSmgr (TYPE_2__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*,int ,char const*) ;
 int get_namespace_name (scalar_t__) ;
 int table_relation_set_new_filenode (TYPE_2__*,int *,char,int *,int *) ;

Relation
heap_create(const char *relname,
   Oid relnamespace,
   Oid reltablespace,
   Oid relid,
   Oid relfilenode,
   Oid accessmtd,
   TupleDesc tupDesc,
   char relkind,
   char relpersistence,
   bool shared_relation,
   bool mapped_relation,
   bool allow_system_table_mods,
   TransactionId *relfrozenxid,
   MultiXactId *relminmxid)
{
 bool create_storage;
 Relation rel;


 Assert(OidIsValid(relid));
 if (!allow_system_table_mods &&
  ((IsCatalogNamespace(relnamespace) && relkind != 135) ||
   IsToastNamespace(relnamespace)) &&
  IsNormalProcessingMode())
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("permission denied to create \"%s.%s\"",
      get_namespace_name(relnamespace), relname),
     errdetail("System catalog modifications are currently disallowed.")));

 *relfrozenxid = InvalidTransactionId;
 *relminmxid = InvalidMultiXactId;


 switch (relkind)
 {
  case 128:
  case 137:
  case 136:
   reltablespace = InvalidOid;
   break;

  case 130:





   reltablespace = InvalidOid;
   break;
  default:
   break;
 }






 if (!RELKIND_HAS_STORAGE(relkind) || OidIsValid(relfilenode))
  create_storage = 0;
 else
 {
  create_storage = 1;
  relfilenode = relid;
 }
 if (reltablespace == MyDatabaseTableSpace)
  reltablespace = InvalidOid;




 rel = RelationBuildLocalRelation(relname,
          relnamespace,
          tupDesc,
          relid,
          accessmtd,
          relfilenode,
          reltablespace,
          shared_relation,
          mapped_relation,
          relpersistence,
          relkind);
 if (create_storage)
 {
  RelationOpenSmgr(rel);

  switch (rel->rd_rel->relkind)
  {
   case 128:
   case 137:
   case 136:
   case 132:
   case 133:
    Assert(0);
    break;

   case 135:
   case 130:
    RelationCreateStorage(rel->rd_node, relpersistence);
    break;

   case 131:
   case 129:
   case 134:
    table_relation_set_new_filenode(rel, &rel->rd_node,
            relpersistence,
            relfrozenxid, relminmxid);
    break;
  }
 }

 return rel;
}
