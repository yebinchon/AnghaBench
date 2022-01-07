
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * last_res; int * cur_res; } ;
typedef TYPE_1__ storeInfo ;
typedef int PGresult ;
typedef int PGconn ;


 int CHECK_FOR_INTERRUPTS () ;
 int ERROR ;
 scalar_t__ PGRES_SINGLE_TUPLE ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQerrorMessage (int *) ;
 int * PQgetResult (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int PQsendQuery (int *,char const*) ;
 int PQsetSingleRowMode (int *) ;
 int applyRemoteGucs (int *) ;
 int elog (int ,char*,...) ;
 int pchomp (int ) ;
 int restoreLocalGucs (int) ;
 int storeRow (TYPE_1__ volatile*,int *,int) ;

__attribute__((used)) static PGresult *
storeQueryResult(volatile storeInfo *sinfo, PGconn *conn, const char *sql)
{
 bool first = 1;
 int nestlevel = -1;
 PGresult *res;

 if (!PQsendQuery(conn, sql))
  elog(ERROR, "could not send query: %s", pchomp(PQerrorMessage(conn)));

 if (!PQsetSingleRowMode(conn))
  elog(ERROR, "failed to set single-row mode for dblink query");

 for (;;)
 {
  CHECK_FOR_INTERRUPTS();

  sinfo->cur_res = PQgetResult(conn);
  if (!sinfo->cur_res)
   break;

  if (PQresultStatus(sinfo->cur_res) == PGRES_SINGLE_TUPLE)
  {







   if (first && nestlevel < 0)
    nestlevel = applyRemoteGucs(conn);

   storeRow(sinfo, sinfo->cur_res, first);

   PQclear(sinfo->cur_res);
   sinfo->cur_res = ((void*)0);
   first = 0;
  }
  else
  {

   if (first && PQresultStatus(sinfo->cur_res) == PGRES_TUPLES_OK)
    storeRow(sinfo, sinfo->cur_res, first);


   PQclear(sinfo->last_res);
   sinfo->last_res = sinfo->cur_res;
   sinfo->cur_res = ((void*)0);
   first = 1;
  }
 }


 restoreLocalGucs(nestlevel);


 res = sinfo->last_res;
 sinfo->last_res = ((void*)0);
 return res;
}
