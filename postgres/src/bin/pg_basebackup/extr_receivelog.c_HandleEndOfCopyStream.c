
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogRecPtr ;
typedef int StreamCtl ;
typedef int PGresult ;
typedef int PGconn ;


 scalar_t__ PGRES_COPY_IN ;
 int PQclear (int *) ;
 int PQerrorMessage (int *) ;
 scalar_t__ PQflush (int *) ;
 int PQfreemem (char*) ;
 int * PQgetResult (int *) ;
 scalar_t__ PQputCopyEnd (int *,int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int close_walfile (int *,int ) ;
 int pg_log_error (char*,int ) ;
 int still_sending ;

__attribute__((used)) static PGresult *
HandleEndOfCopyStream(PGconn *conn, StreamCtl *stream, char *copybuf,
       XLogRecPtr blockpos, XLogRecPtr *stoppos)
{
 PGresult *res = PQgetResult(conn);






 if (still_sending)
 {
  if (!close_walfile(stream, blockpos))
  {

   PQclear(res);
   return ((void*)0);
  }
  if (PQresultStatus(res) == PGRES_COPY_IN)
  {
   if (PQputCopyEnd(conn, ((void*)0)) <= 0 || PQflush(conn))
   {
    pg_log_error("could not send copy-end packet: %s",
        PQerrorMessage(conn));
    PQclear(res);
    return ((void*)0);
   }
   res = PQgetResult(conn);
  }
  still_sending = 0;
 }
 if (copybuf != ((void*)0))
  PQfreemem(copybuf);
 *stoppos = blockpos;
 return res;
}
