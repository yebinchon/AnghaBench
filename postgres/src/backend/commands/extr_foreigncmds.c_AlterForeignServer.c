
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int repl_val ;
typedef int repl_repl ;
typedef int repl_null ;
struct TYPE_18__ {scalar_t__ options; scalar_t__ version; scalar_t__ has_version; int servername; } ;
struct TYPE_17__ {int fdwvalidator; } ;
struct TYPE_16__ {int srvfdw; int oid; } ;
struct TYPE_15__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_foreign_server ;
typedef TYPE_3__ ForeignDataWrapper ;
typedef int Datum ;
typedef TYPE_4__ AlterForeignServerStmt ;


 int ACLCHECK_NOT_OWNER ;
 int Anum_pg_foreign_server_srvoptions ;
 int Anum_pg_foreign_server_srvversion ;
 int CStringGetDatum (int ) ;
 int CStringGetTextDatum (scalar_t__) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int DatumGetPointer (int) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int FOREIGNSERVERNAME ;
 int FOREIGNSERVEROID ;
 int ForeignServerRelationId ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 TYPE_3__* GetForeignDataWrapper (int ) ;
 int GetUserId () ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int InvokeObjectPostAlterHook (int ,int ,int ) ;
 int Natts_pg_foreign_server ;
 int OBJECT_FOREIGN_SERVER ;
 int ObjectAddressSet (int ,int ,int ) ;
 int PointerGetDatum (int *) ;
 scalar_t__ PointerIsValid (int ) ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCacheCopy1 (int ,int ) ;
 int SysCacheGetAttr (int ,TYPE_1__*,int,int*) ;
 int aclcheck_error (int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int heap_freetuple (TYPE_1__*) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int ,int*,int*,int*) ;
 int memset (int*,int,int) ;
 int pg_foreign_server_ownercheck (int ,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;
 int transformGenericOptions (int ,int,scalar_t__,int ) ;

ObjectAddress
AlterForeignServer(AlterForeignServerStmt *stmt)
{
 Relation rel;
 HeapTuple tp;
 Datum repl_val[Natts_pg_foreign_server];
 bool repl_null[Natts_pg_foreign_server];
 bool repl_repl[Natts_pg_foreign_server];
 Oid srvId;
 Form_pg_foreign_server srvForm;
 ObjectAddress address;

 rel = table_open(ForeignServerRelationId, RowExclusiveLock);

 tp = SearchSysCacheCopy1(FOREIGNSERVERNAME,
        CStringGetDatum(stmt->servername));

 if (!HeapTupleIsValid(tp))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("server \"%s\" does not exist", stmt->servername)));

 srvForm = (Form_pg_foreign_server) GETSTRUCT(tp);
 srvId = srvForm->oid;




 if (!pg_foreign_server_ownercheck(srvId, GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_FOREIGN_SERVER,
        stmt->servername);

 memset(repl_val, 0, sizeof(repl_val));
 memset(repl_null, 0, sizeof(repl_null));
 memset(repl_repl, 0, sizeof(repl_repl));

 if (stmt->has_version)
 {



  if (stmt->version)
   repl_val[Anum_pg_foreign_server_srvversion - 1] =
    CStringGetTextDatum(stmt->version);
  else
   repl_null[Anum_pg_foreign_server_srvversion - 1] = 1;

  repl_repl[Anum_pg_foreign_server_srvversion - 1] = 1;
 }

 if (stmt->options)
 {
  ForeignDataWrapper *fdw = GetForeignDataWrapper(srvForm->srvfdw);
  Datum datum;
  bool isnull;


  datum = SysCacheGetAttr(FOREIGNSERVEROID,
        tp,
        Anum_pg_foreign_server_srvoptions,
        &isnull);
  if (isnull)
   datum = PointerGetDatum(((void*)0));


  datum = transformGenericOptions(ForeignServerRelationId,
          datum,
          stmt->options,
          fdw->fdwvalidator);

  if (PointerIsValid(DatumGetPointer(datum)))
   repl_val[Anum_pg_foreign_server_srvoptions - 1] = datum;
  else
   repl_null[Anum_pg_foreign_server_srvoptions - 1] = 1;

  repl_repl[Anum_pg_foreign_server_srvoptions - 1] = 1;
 }


 tp = heap_modify_tuple(tp, RelationGetDescr(rel),
         repl_val, repl_null, repl_repl);

 CatalogTupleUpdate(rel, &tp->t_self, tp);

 InvokeObjectPostAlterHook(ForeignServerRelationId, srvId, 0);

 ObjectAddressSet(address, ForeignServerRelationId, srvId);

 heap_freetuple(tp);

 table_close(rel, RowExclusiveLock);

 return address;
}
