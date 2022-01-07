
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int streamConn; } ;
typedef TYPE_1__ WalReceiverConn ;
struct TYPE_8__ {int err; void* status; } ;
typedef TYPE_2__ WalRcvExecResult ;
typedef int PGresult ;
typedef int Oid ;


 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 scalar_t__ InvalidOid ;
 scalar_t__ MyDatabaseId ;
 int PQclear (int *) ;
 int PQerrorMessage (int ) ;
 int PQresultStatus (int *) ;
 void* WALRCV_ERROR ;
 void* WALRCV_OK_COMMAND ;
 void* WALRCV_OK_COPY_BOTH ;
 void* WALRCV_OK_COPY_IN ;
 void* WALRCV_OK_COPY_OUT ;
 void* WALRCV_OK_TUPLES ;
 int _ (char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int * libpqrcv_PQexec (int ,char const*) ;
 int libpqrcv_processTuples (int *,TYPE_2__*,int const,int const*) ;
 TYPE_2__* palloc0 (int) ;
 int pchomp (int ) ;

__attribute__((used)) static WalRcvExecResult *
libpqrcv_exec(WalReceiverConn *conn, const char *query,
     const int nRetTypes, const Oid *retTypes)
{
 PGresult *pgres = ((void*)0);
 WalRcvExecResult *walres = palloc0(sizeof(WalRcvExecResult));

 if (MyDatabaseId == InvalidOid)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("the query interface requires a database connection")));

 pgres = libpqrcv_PQexec(conn->streamConn, query);

 switch (PQresultStatus(pgres))
 {
  case 129:
  case 128:
   walres->status = WALRCV_OK_TUPLES;
   libpqrcv_processTuples(pgres, walres, nRetTypes, retTypes);
   break;

  case 134:
   walres->status = WALRCV_OK_COPY_IN;
   break;

  case 133:
   walres->status = WALRCV_OK_COPY_OUT;
   break;

  case 135:
   walres->status = WALRCV_OK_COPY_BOTH;
   break;

  case 136:
   walres->status = WALRCV_OK_COMMAND;
   break;


  case 132:
   walres->status = WALRCV_ERROR;
   walres->err = _("empty query");
   break;

  case 130:
  case 131:
  case 137:
   walres->status = WALRCV_ERROR;
   walres->err = pchomp(PQerrorMessage(conn->streamConn));
   break;
 }

 PQclear(pgres);

 return walres;
}
