
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int repl_repl ;
typedef int repl_null ;
struct TYPE_10__ {int oid; int fdwowner; int fdwname; } ;
struct TYPE_9__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_foreign_data_wrapper ;
typedef int Datum ;
typedef int Acl ;


 int Anum_pg_foreign_data_wrapper_fdwacl ;
 int Anum_pg_foreign_data_wrapper_fdwowner ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int DatumGetAclP (int ) ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 int ForeignDataWrapperRelationId ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int InvokeObjectPostAlterHook (int ,int ,int ) ;
 int NameStr (int ) ;
 int Natts_pg_foreign_data_wrapper ;
 int ObjectIdGetDatum (int ) ;
 int PointerGetDatum (int *) ;
 int RelationGetDescr (int ) ;
 int * aclnewowner (int ,int ,int ) ;
 int changeDependencyOnOwner (int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;
 int heap_getattr (TYPE_1__*,int,int ,int*) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int ,int *,int*,int*) ;
 int memset (int*,int,int) ;
 int superuser () ;
 int superuser_arg (int ) ;

__attribute__((used)) static void
AlterForeignDataWrapperOwner_internal(Relation rel, HeapTuple tup, Oid newOwnerId)
{
 Form_pg_foreign_data_wrapper form;
 Datum repl_val[Natts_pg_foreign_data_wrapper];
 bool repl_null[Natts_pg_foreign_data_wrapper];
 bool repl_repl[Natts_pg_foreign_data_wrapper];
 Acl *newAcl;
 Datum aclDatum;
 bool isNull;

 form = (Form_pg_foreign_data_wrapper) GETSTRUCT(tup);


 if (!superuser())
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("permission denied to change owner of foreign-data wrapper \"%s\"",
      NameStr(form->fdwname)),
     errhint("Must be superuser to change owner of a foreign-data wrapper.")));


 if (!superuser_arg(newOwnerId))
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("permission denied to change owner of foreign-data wrapper \"%s\"",
      NameStr(form->fdwname)),
     errhint("The owner of a foreign-data wrapper must be a superuser.")));

 if (form->fdwowner != newOwnerId)
 {
  memset(repl_null, 0, sizeof(repl_null));
  memset(repl_repl, 0, sizeof(repl_repl));

  repl_repl[Anum_pg_foreign_data_wrapper_fdwowner - 1] = 1;
  repl_val[Anum_pg_foreign_data_wrapper_fdwowner - 1] = ObjectIdGetDatum(newOwnerId);

  aclDatum = heap_getattr(tup,
        Anum_pg_foreign_data_wrapper_fdwacl,
        RelationGetDescr(rel),
        &isNull);

  if (!isNull)
  {
   newAcl = aclnewowner(DatumGetAclP(aclDatum),
         form->fdwowner, newOwnerId);
   repl_repl[Anum_pg_foreign_data_wrapper_fdwacl - 1] = 1;
   repl_val[Anum_pg_foreign_data_wrapper_fdwacl - 1] = PointerGetDatum(newAcl);
  }

  tup = heap_modify_tuple(tup, RelationGetDescr(rel), repl_val, repl_null,
        repl_repl);

  CatalogTupleUpdate(rel, &tup->t_self, tup);


  changeDependencyOnOwner(ForeignDataWrapperRelationId,
        form->oid,
        newOwnerId);
 }

 InvokeObjectPostAlterHook(ForeignDataWrapperRelationId,
         form->oid, 0);
}
