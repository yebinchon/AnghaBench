
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int values ;
typedef int nulls ;
struct TYPE_19__ {int options; scalar_t__ version; scalar_t__ servertype; int servername; int fdwname; scalar_t__ if_not_exists; } ;
struct TYPE_18__ {int fdwid; int fdwvalidator; int fdwname; } ;
struct TYPE_17__ {scalar_t__ objectSubId; int objectId; int classId; } ;
struct TYPE_16__ {int rd_att; } ;
typedef TYPE_1__* Relation ;
typedef int Oid ;
typedef TYPE_2__ ObjectAddress ;
typedef int HeapTuple ;
typedef TYPE_3__ ForeignDataWrapper ;
typedef int Datum ;
typedef TYPE_4__ CreateForeignServerStmt ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_USAGE ;
 int Anum_pg_foreign_server_oid ;
 int Anum_pg_foreign_server_srvacl ;
 int Anum_pg_foreign_server_srvfdw ;
 int Anum_pg_foreign_server_srvname ;
 int Anum_pg_foreign_server_srvoptions ;
 int Anum_pg_foreign_server_srvowner ;
 int Anum_pg_foreign_server_srvtype ;
 int Anum_pg_foreign_server_srvversion ;
 int CStringGetDatum (int ) ;
 int CStringGetTextDatum (scalar_t__) ;
 int CatalogTupleInsert (TYPE_1__*,int ) ;
 int DEPENDENCY_NORMAL ;
 int DatumGetPointer (int) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERROR ;
 int ForeignDataWrapperRelationId ;
 int ForeignServerOidIndexId ;
 int ForeignServerRelationId ;
 TYPE_3__* GetForeignDataWrapperByName (int ,int) ;
 int * GetForeignServerByName (int ,int) ;
 int GetNewOidWithIndex (TYPE_1__*,int ,int) ;
 int GetUserId () ;
 TYPE_2__ InvalidObjectAddress ;
 int InvokeObjectPostCreateHook (int ,int ,int ) ;
 int NOTICE ;
 int Natts_pg_foreign_server ;
 int OBJECT_FDW ;
 int ObjectIdGetDatum (int ) ;
 int PointerGetDatum (int *) ;
 scalar_t__ PointerIsValid (int ) ;
 int RowExclusiveLock ;
 int aclcheck_error (scalar_t__,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int heap_form_tuple (int ,int*,int*) ;
 int heap_freetuple (int ) ;
 int memset (int*,int,int) ;
 int namein ;
 scalar_t__ pg_foreign_data_wrapper_aclcheck (int ,int ,int ) ;
 int recordDependencyOn (TYPE_2__*,TYPE_2__*,int ) ;
 int recordDependencyOnCurrentExtension (TYPE_2__*,int) ;
 int recordDependencyOnOwner (int ,int ,int ) ;
 int table_close (TYPE_1__*,int ) ;
 TYPE_1__* table_open (int ,int ) ;
 int transformGenericOptions (int ,int ,int ,int ) ;

ObjectAddress
CreateForeignServer(CreateForeignServerStmt *stmt)
{
 Relation rel;
 Datum srvoptions;
 Datum values[Natts_pg_foreign_server];
 bool nulls[Natts_pg_foreign_server];
 HeapTuple tuple;
 Oid srvId;
 Oid ownerId;
 AclResult aclresult;
 ObjectAddress myself;
 ObjectAddress referenced;
 ForeignDataWrapper *fdw;

 rel = table_open(ForeignServerRelationId, RowExclusiveLock);


 ownerId = GetUserId();





 if (GetForeignServerByName(stmt->servername, 1) != ((void*)0))
 {
  if (stmt->if_not_exists)
  {
   ereport(NOTICE,
     (errcode(ERRCODE_DUPLICATE_OBJECT),
      errmsg("server \"%s\" already exists, skipping",
       stmt->servername)));
   table_close(rel, RowExclusiveLock);
   return InvalidObjectAddress;
  }
  else
   ereport(ERROR,
     (errcode(ERRCODE_DUPLICATE_OBJECT),
      errmsg("server \"%s\" already exists",
       stmt->servername)));
 }





 fdw = GetForeignDataWrapperByName(stmt->fdwname, 0);

 aclresult = pg_foreign_data_wrapper_aclcheck(fdw->fdwid, ownerId, ACL_USAGE);
 if (aclresult != ACLCHECK_OK)
  aclcheck_error(aclresult, OBJECT_FDW, fdw->fdwname);




 memset(values, 0, sizeof(values));
 memset(nulls, 0, sizeof(nulls));

 srvId = GetNewOidWithIndex(rel, ForeignServerOidIndexId,
          Anum_pg_foreign_server_oid);
 values[Anum_pg_foreign_server_oid - 1] = ObjectIdGetDatum(srvId);
 values[Anum_pg_foreign_server_srvname - 1] =
  DirectFunctionCall1(namein, CStringGetDatum(stmt->servername));
 values[Anum_pg_foreign_server_srvowner - 1] = ObjectIdGetDatum(ownerId);
 values[Anum_pg_foreign_server_srvfdw - 1] = ObjectIdGetDatum(fdw->fdwid);


 if (stmt->servertype)
  values[Anum_pg_foreign_server_srvtype - 1] =
   CStringGetTextDatum(stmt->servertype);
 else
  nulls[Anum_pg_foreign_server_srvtype - 1] = 1;


 if (stmt->version)
  values[Anum_pg_foreign_server_srvversion - 1] =
   CStringGetTextDatum(stmt->version);
 else
  nulls[Anum_pg_foreign_server_srvversion - 1] = 1;


 nulls[Anum_pg_foreign_server_srvacl - 1] = 1;


 srvoptions = transformGenericOptions(ForeignServerRelationId,
           PointerGetDatum(((void*)0)),
           stmt->options,
           fdw->fdwvalidator);

 if (PointerIsValid(DatumGetPointer(srvoptions)))
  values[Anum_pg_foreign_server_srvoptions - 1] = srvoptions;
 else
  nulls[Anum_pg_foreign_server_srvoptions - 1] = 1;

 tuple = heap_form_tuple(rel->rd_att, values, nulls);

 CatalogTupleInsert(rel, tuple);

 heap_freetuple(tuple);


 myself.classId = ForeignServerRelationId;
 myself.objectId = srvId;
 myself.objectSubId = 0;

 referenced.classId = ForeignDataWrapperRelationId;
 referenced.objectId = fdw->fdwid;
 referenced.objectSubId = 0;
 recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);

 recordDependencyOnOwner(ForeignServerRelationId, srvId, ownerId);


 recordDependencyOnCurrentExtension(&myself, 0);


 InvokeObjectPostCreateHook(ForeignServerRelationId, srvId, 0);

 table_close(rel, RowExclusiveLock);

 return myself;
}
