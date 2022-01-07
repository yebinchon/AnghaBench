
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int Archive ;


 int * ExecuteSqlQuery (int *,char const*,int ) ;
 int PGRES_TUPLES_OK ;
 int PQntuples (int *) ;
 int fatal (int ,int,char const*) ;
 int ngettext (char*,char*,int) ;

PGresult *
ExecuteSqlQueryForSingleRow(Archive *fout, const char *query)
{
 PGresult *res;
 int ntups;

 res = ExecuteSqlQuery(fout, query, PGRES_TUPLES_OK);


 ntups = PQntuples(res);
 if (ntups != 1)
  fatal(ngettext("query returned %d row instead of one: %s",
        "query returned %d rows instead of one: %s",
        ntups),
     ntups, query);

 return res;
}
