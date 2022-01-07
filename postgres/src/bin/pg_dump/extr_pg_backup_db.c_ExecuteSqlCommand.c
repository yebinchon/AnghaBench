
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pgCopyIn; int * connection; } ;
typedef int PGresult ;
typedef int PGconn ;
typedef TYPE_1__ ArchiveHandle ;






 int PQclear (int *) ;
 int PQerrorMessage (int *) ;
 int * PQexec (int *,char const*) ;
 int PQresultStatus (int *) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;
 int warn_or_exit_horribly (TYPE_1__*,char*,char const*,int ,char const*) ;

__attribute__((used)) static void
ExecuteSqlCommand(ArchiveHandle *AH, const char *qry, const char *desc)
{
 PGconn *conn = AH->connection;
 PGresult *res;




 res = PQexec(conn, qry);

 switch (PQresultStatus(res))
 {
  case 131:
  case 128:
  case 129:

   break;
  case 130:

   AH->pgCopyIn = 1;
   break;
  default:

   warn_or_exit_horribly(AH, "%s: %sCommand was: %s",
          desc, PQerrorMessage(conn), qry);
   break;
 }

 PQclear(res);
}
