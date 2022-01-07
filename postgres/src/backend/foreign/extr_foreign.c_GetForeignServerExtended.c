
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int bits16 ;
struct TYPE_5__ {int options; int * serverversion; int * servertype; int fdwid; int owner; int servername; int serverid; } ;
struct TYPE_4__ {int srvfdw; int srvowner; int srvname; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_foreign_server ;
typedef TYPE_2__ ForeignServer ;
typedef int Datum ;


 int Anum_pg_foreign_server_srvoptions ;
 int Anum_pg_foreign_server_srvtype ;
 int Anum_pg_foreign_server_srvversion ;
 int ERROR ;
 int FOREIGNSERVEROID ;
 int FSV_MISSING_OK ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int NIL ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int * TextDatumGetCString (int ) ;
 int elog (int ,char*,int ) ;
 scalar_t__ palloc (int) ;
 int pstrdup (int ) ;
 int untransformRelOptions (int ) ;

ForeignServer *
GetForeignServerExtended(Oid serverid, bits16 flags)
{
 Form_pg_foreign_server serverform;
 ForeignServer *server;
 HeapTuple tp;
 Datum datum;
 bool isnull;

 tp = SearchSysCache1(FOREIGNSERVEROID, ObjectIdGetDatum(serverid));

 if (!HeapTupleIsValid(tp))
 {
  if ((flags & FSV_MISSING_OK) == 0)
   elog(ERROR, "cache lookup failed for foreign server %u", serverid);
  return ((void*)0);
 }

 serverform = (Form_pg_foreign_server) GETSTRUCT(tp);

 server = (ForeignServer *) palloc(sizeof(ForeignServer));
 server->serverid = serverid;
 server->servername = pstrdup(NameStr(serverform->srvname));
 server->owner = serverform->srvowner;
 server->fdwid = serverform->srvfdw;


 datum = SysCacheGetAttr(FOREIGNSERVEROID,
       tp,
       Anum_pg_foreign_server_srvtype,
       &isnull);
 server->servertype = isnull ? ((void*)0) : TextDatumGetCString(datum);


 datum = SysCacheGetAttr(FOREIGNSERVEROID,
       tp,
       Anum_pg_foreign_server_srvversion,
       &isnull);
 server->serverversion = isnull ? ((void*)0) : TextDatumGetCString(datum);


 datum = SysCacheGetAttr(FOREIGNSERVEROID,
       tp,
       Anum_pg_foreign_server_srvoptions,
       &isnull);
 if (isnull)
  server->options = NIL;
 else
  server->options = untransformRelOptions(datum);

 ReleaseSysCache(tp);

 return server;
}
