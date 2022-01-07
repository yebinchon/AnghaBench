
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int PGconn ;
typedef int FILE ;


 scalar_t__ PGRES_COMMAND_OK ;
 int PQerrorMessage (int *) ;
 int PQfreemem (char*) ;
 int PQgetCopyData (int *,char**,int ) ;
 int * PQgetResult (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 scalar_t__ fflush (int *) ;
 int fwrite (char*,int,int,int *) ;
 int pg_log_error (char*,...) ;
 int pg_log_info (char*,int ) ;

bool
handleCopyOut(PGconn *conn, FILE *copystream, PGresult **res)
{
 bool OK = 1;
 char *buf;
 int ret;

 for (;;)
 {
  ret = PQgetCopyData(conn, &buf, 0);

  if (ret < 0)
   break;

  if (buf)
  {
   if (OK && copystream && fwrite(buf, 1, ret, copystream) != ret)
   {
    pg_log_error("could not write COPY data: %m");

    OK = 0;
   }
   PQfreemem(buf);
  }
 }

 if (OK && copystream && fflush(copystream))
 {
  pg_log_error("could not write COPY data: %m");
  OK = 0;
 }

 if (ret == -2)
 {
  pg_log_error("COPY data transfer failed: %s", PQerrorMessage(conn));
  OK = 0;
 }
 *res = PQgetResult(conn);
 if (PQresultStatus(*res) != PGRES_COMMAND_OK)
 {
  pg_log_info("%s", PQerrorMessage(conn));
  OK = 0;
 }

 return OK;
}
