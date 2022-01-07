
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fd_set ;
struct TYPE_4__ {char* relname; int be_pid; } ;
typedef int PGresult ;
typedef TYPE_1__ PGnotify ;
typedef int PGconn ;


 scalar_t__ CONNECTION_OK ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 scalar_t__ PGRES_COMMAND_OK ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int * PQconnectdb (char const*) ;
 int PQconsumeInput (int *) ;
 char* PQerrorMessage (int *) ;
 int * PQexec (int *,char*) ;
 int PQfinish (int *) ;
 int PQfreemem (TYPE_1__*) ;
 TYPE_1__* PQnotifies (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int PQsocket (int *) ;
 scalar_t__ PQstatus (int *) ;
 int errno ;
 int exit_nicely (int *) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ select (int,int *,int *,int *,int *) ;
 int stderr ;
 char* strerror (int ) ;

int
main(int argc, char **argv)
{
 const char *conninfo;
 PGconn *conn;
 PGresult *res;
 PGnotify *notify;
 int nnotifies;






 if (argc > 1)
  conninfo = argv[1];
 else
  conninfo = "dbname = postgres";


 conn = PQconnectdb(conninfo);


 if (PQstatus(conn) != CONNECTION_OK)
 {
  fprintf(stderr, "Connection to database failed: %s",
    PQerrorMessage(conn));
  exit_nicely(conn);
 }


 res = PQexec(conn,
     "SELECT pg_catalog.set_config('search_path', '', false)");
 if (PQresultStatus(res) != PGRES_TUPLES_OK)
 {
  fprintf(stderr, "SET failed: %s", PQerrorMessage(conn));
  PQclear(res);
  exit_nicely(conn);
 }





 PQclear(res);




 res = PQexec(conn, "LISTEN TBL2");
 if (PQresultStatus(res) != PGRES_COMMAND_OK)
 {
  fprintf(stderr, "LISTEN command failed: %s", PQerrorMessage(conn));
  PQclear(res);
  exit_nicely(conn);
 }
 PQclear(res);


 nnotifies = 0;
 while (nnotifies < 4)
 {





  int sock;
  fd_set input_mask;

  sock = PQsocket(conn);

  if (sock < 0)
   break;

  FD_ZERO(&input_mask);
  FD_SET(sock, &input_mask);

  if (select(sock + 1, &input_mask, ((void*)0), ((void*)0), ((void*)0)) < 0)
  {
   fprintf(stderr, "select() failed: %s\n", strerror(errno));
   exit_nicely(conn);
  }


  PQconsumeInput(conn);
  while ((notify = PQnotifies(conn)) != ((void*)0))
  {
   fprintf(stderr,
     "ASYNC NOTIFY of '%s' received from backend PID %d\n",
     notify->relname, notify->be_pid);
   PQfreemem(notify);
   nnotifies++;
   PQconsumeInput(conn);
  }
 }

 fprintf(stderr, "Done.\n");


 PQfinish(conn);

 return 0;
}
