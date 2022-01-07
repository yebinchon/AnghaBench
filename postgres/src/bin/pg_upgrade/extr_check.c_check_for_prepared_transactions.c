
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int PGconn ;
typedef int ClusterInfo ;


 int PQclear (int *) ;
 int PQfinish (int *) ;
 scalar_t__ PQntuples (int *) ;
 int check_ok () ;
 int * connectToServer (int *,char*) ;
 int * executeQueryOrDie (int *,char*) ;
 int old_cluster ;
 int pg_fatal (char*) ;
 int prep_status (char*) ;

__attribute__((used)) static void
check_for_prepared_transactions(ClusterInfo *cluster)
{
 PGresult *res;
 PGconn *conn = connectToServer(cluster, "template1");

 prep_status("Checking for prepared transactions");

 res = executeQueryOrDie(conn,
       "SELECT * "
       "FROM pg_catalog.pg_prepared_xacts");

 if (PQntuples(res) != 0)
 {
  if (cluster == &old_cluster)
   pg_fatal("The source cluster contains prepared transactions\n");
  else
   pg_fatal("The target cluster contains prepared transactions\n");
 }

 PQclear(res);

 PQfinish(conn);

 check_ok();
}
