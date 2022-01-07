
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int PGconn ;


 int Assert (int ) ;
 char* ERRCODE_UNDEFINED_TABLE ;
 int PART_HASH ;
 int PART_NONE ;
 int PART_RANGE ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PG_DIAG_SQLSTATE ;
 int PQclear (int *) ;
 char* PQdb (int *) ;
 char* PQerrorMessage (int *) ;
 int * PQexec (int *,char*) ;
 scalar_t__ PQgetisnull (int *,int ,int) ;
 char* PQgetvalue (int *,int ,int) ;
 scalar_t__ PQntuples (int *) ;
 char* PQresultErrorField (int *,int ) ;
 scalar_t__ PQresultStatus (int *) ;
 scalar_t__ atoi (char*) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int partition_method ;
 scalar_t__ partitions ;
 scalar_t__ scale ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
GetTableInfo(PGconn *con, bool scale_given)
{
 PGresult *res;





 res = PQexec(con, "select count(*) from pgbench_branches");
 if (PQresultStatus(res) != PGRES_TUPLES_OK)
 {
  char *sqlState = PQresultErrorField(res, PG_DIAG_SQLSTATE);

  fprintf(stderr, "%s", PQerrorMessage(con));
  if (sqlState && strcmp(sqlState, ERRCODE_UNDEFINED_TABLE) == 0)
  {
   fprintf(stderr, "Perhaps you need to do initialization (\"pgbench -i\") in database \"%s\"\n", PQdb(con));
  }

  exit(1);
 }
 scale = atoi(PQgetvalue(res, 0, 0));
 if (scale < 0)
 {
  fprintf(stderr, "invalid count(*) from pgbench_branches: \"%s\"\n",
    PQgetvalue(res, 0, 0));
  exit(1);
 }
 PQclear(res);


 if (scale_given)
  fprintf(stderr,
    "scale option ignored, using count from pgbench_branches table (%d)\n",
    scale);
 res = PQexec(con,
     "select o.n, p.partstrat, pg_catalog.count(i.inhparent) "
     "from pg_catalog.pg_class as c "
     "join pg_catalog.pg_namespace as n on (n.oid = c.relnamespace) "
     "cross join lateral (select pg_catalog.array_position(pg_catalog.current_schemas(true), n.nspname)) as o(n) "
     "left join pg_catalog.pg_partitioned_table as p on (p.partrelid = c.oid) "
     "left join pg_catalog.pg_inherits as i on (c.oid = i.inhparent) "
     "where c.relname = 'pgbench_accounts' and o.n is not null "
     "group by 1, 2 "
     "order by 1 asc "
     "limit 1");

 if (PQresultStatus(res) != PGRES_TUPLES_OK)
 {

  partition_method = PART_NONE;
  partitions = 0;
 }
 else if (PQntuples(res) == 0)
 {




  fprintf(stderr,
    "no pgbench_accounts table found in search_path\n"
    "Perhaps you need to do initialization (\"pgbench -i\") in database \"%s\".\n", PQdb(con));
  exit(1);
 }
 else
 {

  if (PQgetisnull(res, 0, 1))
   partition_method = PART_NONE;
  else
  {
   char *ps = PQgetvalue(res, 0, 1);


   Assert(ps != ((void*)0));

   if (strcmp(ps, "r") == 0)
    partition_method = PART_RANGE;
   else if (strcmp(ps, "h") == 0)
    partition_method = PART_HASH;
   else
   {

    fprintf(stderr, "unexpected partition method: \"%s\"\n", ps);
    exit(1);
   }
  }

  partitions = atoi(PQgetvalue(res, 0, 2));
 }

 PQclear(res);
}
