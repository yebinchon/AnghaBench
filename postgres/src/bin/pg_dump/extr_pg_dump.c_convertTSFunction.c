
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int query ;
typedef int PGresult ;
typedef int Oid ;
typedef int Archive ;


 int * ExecuteSqlQueryForSingleRow (int *,char*) ;
 int PQclear (int *) ;
 int PQgetvalue (int *,int ,int ) ;
 char* pg_strdup (int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static char *
convertTSFunction(Archive *fout, Oid funcOid)
{
 char *result;
 char query[128];
 PGresult *res;

 snprintf(query, sizeof(query),
    "SELECT '%u'::pg_catalog.regproc", funcOid);
 res = ExecuteSqlQueryForSingleRow(fout, query);

 result = pg_strdup(PQgetvalue(res, 0, 0));

 PQclear(res);

 return result;
}
