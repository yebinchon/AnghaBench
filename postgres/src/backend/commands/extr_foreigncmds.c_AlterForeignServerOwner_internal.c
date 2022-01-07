
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int repl_repl ;
typedef int repl_null ;
struct TYPE_13__ {int fdwname; } ;
struct TYPE_12__ {int oid; int srvowner; int srvfdw; int srvname; } ;
struct TYPE_11__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_foreign_server ;
typedef TYPE_3__ ForeignDataWrapper ;
typedef int Datum ;
typedef scalar_t__ AclResult ;
typedef int Acl ;


 scalar_t__ ACLCHECK_NOT_OWNER ;
 scalar_t__ ACLCHECK_OK ;
 int ACL_USAGE ;
 int Anum_pg_foreign_server_srvacl ;
 int Anum_pg_foreign_server_srvowner ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int DatumGetAclP (int ) ;
 int ForeignServerRelationId ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 TYPE_3__* GetForeignDataWrapper (int ) ;
 int GetUserId () ;
 int InvokeObjectPostAlterHook (int ,int ,int ) ;
 int NameStr (int ) ;
 int Natts_pg_foreign_server ;
 int OBJECT_FDW ;
 int OBJECT_FOREIGN_SERVER ;
 int ObjectIdGetDatum (int ) ;
 int PointerGetDatum (int *) ;
 int RelationGetDescr (int ) ;
 int aclcheck_error (scalar_t__,int ,int ) ;
 int * aclnewowner (int ,int ,int ) ;
 int changeDependencyOnOwner (int ,int ,int ) ;
 int check_is_member_of_role (int ,int ) ;
 int heap_getattr (TYPE_1__*,int,int ,int*) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int ,int *,int*,int*) ;
 int memset (int*,int,int) ;
 scalar_t__ pg_foreign_data_wrapper_aclcheck (int ,int ,int ) ;
 int pg_foreign_server_ownercheck (int ,int ) ;
 int superuser () ;

__attribute__((used)) static void
AlterForeignServerOwner_internal(Relation rel, HeapTuple tup, Oid newOwnerId)
{
 Form_pg_foreign_server form;
 Datum repl_val[Natts_pg_foreign_server];
 bool repl_null[Natts_pg_foreign_server];
 bool repl_repl[Natts_pg_foreign_server];
 Acl *newAcl;
 Datum aclDatum;
 bool isNull;

 form = (Form_pg_foreign_server) GETSTRUCT(tup);

 if (form->srvowner != newOwnerId)
 {

  if (!superuser())
  {
   Oid srvId;
   AclResult aclresult;

   srvId = form->oid;


   if (!pg_foreign_server_ownercheck(srvId, GetUserId()))
    aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_FOREIGN_SERVER,
          NameStr(form->srvname));


   check_is_member_of_role(GetUserId(), newOwnerId);


   aclresult = pg_foreign_data_wrapper_aclcheck(form->srvfdw, newOwnerId, ACL_USAGE);
   if (aclresult != ACLCHECK_OK)
   {
    ForeignDataWrapper *fdw = GetForeignDataWrapper(form->srvfdw);

    aclcheck_error(aclresult, OBJECT_FDW, fdw->fdwname);
   }
  }

  memset(repl_null, 0, sizeof(repl_null));
  memset(repl_repl, 0, sizeof(repl_repl));

  repl_repl[Anum_pg_foreign_server_srvowner - 1] = 1;
  repl_val[Anum_pg_foreign_server_srvowner - 1] = ObjectIdGetDatum(newOwnerId);

  aclDatum = heap_getattr(tup,
        Anum_pg_foreign_server_srvacl,
        RelationGetDescr(rel),
        &isNull);

  if (!isNull)
  {
   newAcl = aclnewowner(DatumGetAclP(aclDatum),
         form->srvowner, newOwnerId);
   repl_repl[Anum_pg_foreign_server_srvacl - 1] = 1;
   repl_val[Anum_pg_foreign_server_srvacl - 1] = PointerGetDatum(newAcl);
  }

  tup = heap_modify_tuple(tup, RelationGetDescr(rel), repl_val, repl_null,
        repl_repl);

  CatalogTupleUpdate(rel, &tup->t_self, tup);


  changeDependencyOnOwner(ForeignServerRelationId, form->oid,
        newOwnerId);
 }

 InvokeObjectPostAlterHook(ForeignServerRelationId,
         form->oid, 0);
}
