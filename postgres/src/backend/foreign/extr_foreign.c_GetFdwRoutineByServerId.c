
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fdwname; int fdwhandler; } ;
struct TYPE_3__ {int srvfdw; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_foreign_server ;
typedef TYPE_2__* Form_pg_foreign_data_wrapper ;
typedef int FdwRoutine ;


 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int FOREIGNDATAWRAPPEROID ;
 int FOREIGNSERVEROID ;
 scalar_t__ GETSTRUCT (int ) ;
 int * GetFdwRoutine (int ) ;
 int HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;

FdwRoutine *
GetFdwRoutineByServerId(Oid serverid)
{
 HeapTuple tp;
 Form_pg_foreign_data_wrapper fdwform;
 Form_pg_foreign_server serverform;
 Oid fdwid;
 Oid fdwhandler;


 tp = SearchSysCache1(FOREIGNSERVEROID, ObjectIdGetDatum(serverid));
 if (!HeapTupleIsValid(tp))
  elog(ERROR, "cache lookup failed for foreign server %u", serverid);
 serverform = (Form_pg_foreign_server) GETSTRUCT(tp);
 fdwid = serverform->srvfdw;
 ReleaseSysCache(tp);


 tp = SearchSysCache1(FOREIGNDATAWRAPPEROID, ObjectIdGetDatum(fdwid));
 if (!HeapTupleIsValid(tp))
  elog(ERROR, "cache lookup failed for foreign-data wrapper %u", fdwid);
 fdwform = (Form_pg_foreign_data_wrapper) GETSTRUCT(tp);
 fdwhandler = fdwform->fdwhandler;


 if (!OidIsValid(fdwhandler))
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("foreign-data wrapper \"%s\" has no handler",
      NameStr(fdwform->fdwname))));

 ReleaseSysCache(tp);


 return GetFdwRoutine(fdwhandler);
}
