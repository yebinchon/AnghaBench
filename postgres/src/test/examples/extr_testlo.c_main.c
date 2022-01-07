
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int PGconn ;
typedef int Oid ;


 scalar_t__ CONNECTION_OK ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 char* PQerrorMessage (int *) ;
 int * PQexec (int *,char*) ;
 int PQfinish (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int * PQsetdb (int *,int *,int *,int *,char*) ;
 scalar_t__ PQstatus (int *) ;
 int exit (int) ;
 int exit_nicely (int *) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ lo_export (int *,int,char*) ;
 int lo_import (int *,char*) ;
 int overwrite (int *,int,int,int) ;
 int pickout (int *,int,int,int) ;
 int printf (char*,...) ;
 int stderr ;

int
main(int argc, char **argv)
{
 char *in_filename,
      *out_filename;
 char *database;
 Oid lobjOid;
 PGconn *conn;
 PGresult *res;

 if (argc != 4)
 {
  fprintf(stderr, "Usage: %s database_name in_filename out_filename\n",
    argv[0]);
  exit(1);
 }

 database = argv[1];
 in_filename = argv[2];
 out_filename = argv[3];




 conn = PQsetdb(((void*)0), ((void*)0), ((void*)0), ((void*)0), database);


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

 res = PQexec(conn, "begin");
 PQclear(res);
 printf("importing file \"%s\" ...\n", in_filename);

 lobjOid = lo_import(conn, in_filename);
 if (lobjOid == 0)
  fprintf(stderr, "%s\n", PQerrorMessage(conn));
 else
 {
  printf("\tas large object %u.\n", lobjOid);

  printf("picking out bytes 1000-2000 of the large object\n");
  pickout(conn, lobjOid, 1000, 1000);

  printf("overwriting bytes 1000-2000 of the large object with X's\n");
  overwrite(conn, lobjOid, 1000, 1000);

  printf("exporting large object to file \"%s\" ...\n", out_filename);

  if (lo_export(conn, lobjOid, out_filename) < 0)
   fprintf(stderr, "%s\n", PQerrorMessage(conn));
 }

 res = PQexec(conn, "end");
 PQclear(res);
 PQfinish(conn);
 return 0;
}
