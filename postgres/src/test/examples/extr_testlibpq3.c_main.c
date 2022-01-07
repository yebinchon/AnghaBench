
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int binaryIntVal ;
typedef int PGresult ;
typedef int PGconn ;


 scalar_t__ CONNECTION_OK ;
 scalar_t__ PGRES_COMMAND_OK ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int * PQconnectdb (char const*) ;
 char* PQerrorMessage (int *) ;
 int * PQexec (int *,char*) ;
 int * PQexecParams (int *,char*,int,int *,char const**,int*,int*,int) ;
 int PQfinish (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 scalar_t__ PQstatus (int *) ;
 int exit_nicely (int *) ;
 int fprintf (int ,char*,char*) ;
 int htonl (int ) ;
 int show_binary_results (int *) ;
 int stderr ;

int
main(int argc, char **argv)
{
 const char *conninfo;
 PGconn *conn;
 PGresult *res;
 const char *paramValues[1];
 int paramLengths[1];
 int paramFormats[1];
 uint32_t binaryIntVal;






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


 res = PQexec(conn, "SET search_path = testlibpq3");
 if (PQresultStatus(res) != PGRES_COMMAND_OK)
 {
  fprintf(stderr, "SET failed: %s", PQerrorMessage(conn));
  PQclear(res);
  exit_nicely(conn);
 }
 PQclear(res);
 paramValues[0] = "joe's place";

 res = PQexecParams(conn,
        "SELECT * FROM test1 WHERE t = $1",
        1,
        ((void*)0),
        paramValues,
        ((void*)0),
        ((void*)0),
        1);

 if (PQresultStatus(res) != PGRES_TUPLES_OK)
 {
  fprintf(stderr, "SELECT failed: %s", PQerrorMessage(conn));
  PQclear(res);
  exit_nicely(conn);
 }

 show_binary_results(res);

 PQclear(res);
 binaryIntVal = htonl((uint32_t) 2);


 paramValues[0] = (char *) &binaryIntVal;
 paramLengths[0] = sizeof(binaryIntVal);
 paramFormats[0] = 1;

 res = PQexecParams(conn,
        "SELECT * FROM test1 WHERE i = $1::int4",
        1,
        ((void*)0),
        paramValues,
        paramLengths,
        paramFormats,
        1);

 if (PQresultStatus(res) != PGRES_TUPLES_OK)
 {
  fprintf(stderr, "SELECT failed: %s", PQerrorMessage(conn));
  PQclear(res);
  exit_nicely(conn);
 }

 show_binary_results(res);

 PQclear(res);


 PQfinish(conn);

 return 0;
}
