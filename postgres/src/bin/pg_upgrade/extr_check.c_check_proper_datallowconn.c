
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int PGconn ;
typedef int ClusterInfo ;


 int PQclear (int *) ;
 int PQfinish (int *) ;
 int PQfnumber (int *,char*) ;
 char* PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int check_ok () ;
 int * connectToServer (int *,char*) ;
 int * executeQueryOrDie (int *,char*) ;
 int pg_fatal (char*) ;
 int prep_status (char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
check_proper_datallowconn(ClusterInfo *cluster)
{
 int dbnum;
 PGconn *conn_template1;
 PGresult *dbres;
 int ntups;
 int i_datname;
 int i_datallowconn;

 prep_status("Checking database connection settings");

 conn_template1 = connectToServer(cluster, "template1");


 dbres = executeQueryOrDie(conn_template1,
         "SELECT	datname, datallowconn "
         "FROM	pg_catalog.pg_database");

 i_datname = PQfnumber(dbres, "datname");
 i_datallowconn = PQfnumber(dbres, "datallowconn");

 ntups = PQntuples(dbres);
 for (dbnum = 0; dbnum < ntups; dbnum++)
 {
  char *datname = PQgetvalue(dbres, dbnum, i_datname);
  char *datallowconn = PQgetvalue(dbres, dbnum, i_datallowconn);

  if (strcmp(datname, "template0") == 0)
  {

   if (strcmp(datallowconn, "t") == 0)
    pg_fatal("template0 must not allow connections, "
       "i.e. its pg_database.datallowconn must be false\n");
  }
  else
  {




   if (strcmp(datallowconn, "f") == 0)
    pg_fatal("All non-template0 databases must allow connections, "
       "i.e. their pg_database.datallowconn must be true\n");
  }
 }

 PQclear(dbres);

 PQfinish(conn_template1);

 check_ok();
}
