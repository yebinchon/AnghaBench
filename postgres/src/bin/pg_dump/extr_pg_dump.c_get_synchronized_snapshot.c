
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int Archive ;


 int * ExecuteSqlQueryForSingleRow (int *,char*) ;
 int PQclear (int *) ;
 int PQgetvalue (int *,int ,int ) ;
 char* pg_strdup (int ) ;

__attribute__((used)) static char *
get_synchronized_snapshot(Archive *fout)
{
 char *query = "SELECT pg_catalog.pg_export_snapshot()";
 char *result;
 PGresult *res;

 res = ExecuteSqlQueryForSingleRow(fout, query);
 result = pg_strdup(PQgetvalue(res, 0, 0));
 PQclear(res);

 return result;
}
