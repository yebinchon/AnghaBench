
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int oid; int pubowner; int pubname; scalar_t__ puballtables; } ;
struct TYPE_6__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_publication ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_NOT_OWNER ;
 scalar_t__ ACLCHECK_OK ;
 int ACL_CREATE ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int GetUserId () ;
 int InvokeObjectPostAlterHook (int ,int ,int ) ;
 int MyDatabaseId ;
 int NameStr (int ) ;
 int OBJECT_DATABASE ;
 int OBJECT_PUBLICATION ;
 int PublicationRelationId ;
 int aclcheck_error (scalar_t__,int ,int ) ;
 int changeDependencyOnOwner (int ,int ,int ) ;
 int check_is_member_of_role (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;
 int get_database_name (int ) ;
 scalar_t__ pg_database_aclcheck (int ,int ,int ) ;
 int pg_publication_ownercheck (int ,int ) ;
 int superuser () ;
 int superuser_arg (int ) ;

__attribute__((used)) static void
AlterPublicationOwner_internal(Relation rel, HeapTuple tup, Oid newOwnerId)
{
 Form_pg_publication form;

 form = (Form_pg_publication) GETSTRUCT(tup);

 if (form->pubowner == newOwnerId)
  return;

 if (!superuser())
 {
  AclResult aclresult;


  if (!pg_publication_ownercheck(form->oid, GetUserId()))
   aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_PUBLICATION,
         NameStr(form->pubname));


  check_is_member_of_role(GetUserId(), newOwnerId);


  aclresult = pg_database_aclcheck(MyDatabaseId, newOwnerId, ACL_CREATE);
  if (aclresult != ACLCHECK_OK)
   aclcheck_error(aclresult, OBJECT_DATABASE,
         get_database_name(MyDatabaseId));

  if (form->puballtables && !superuser_arg(newOwnerId))
   ereport(ERROR,
     (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
      errmsg("permission denied to change owner of publication \"%s\"",
       NameStr(form->pubname)),
      errhint("The owner of a FOR ALL TABLES publication must be a superuser.")));
 }

 form->pubowner = newOwnerId;
 CatalogTupleUpdate(rel, &tup->t_self, tup);


 changeDependencyOnOwner(PublicationRelationId,
       form->oid,
       newOwnerId);

 InvokeObjectPostAlterHook(PublicationRelationId,
         form->oid, 0);
}
