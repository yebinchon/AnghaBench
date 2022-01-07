
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef int PGresult ;
typedef int Oid ;
typedef int Archive ;


 int * ExecuteSqlQueryForSingleRow (int *,int ) ;
 int PQclear (int *) ;
 int PQgetvalue (int *,int ,int ) ;
 int appendPQExpBuffer (TYPE_1__*,char*,int ) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 int fmtId (int ) ;
 char* pg_strdup (int ) ;

__attribute__((used)) static char *
get_language_name(Archive *fout, Oid langid)
{
 PQExpBuffer query;
 PGresult *res;
 char *lanname;

 query = createPQExpBuffer();
 appendPQExpBuffer(query, "SELECT lanname FROM pg_language WHERE oid = %u", langid);
 res = ExecuteSqlQueryForSingleRow(fout, query->data);
 lanname = pg_strdup(fmtId(PQgetvalue(res, 0, 0)));
 destroyPQExpBuffer(query);
 PQclear(res);

 return lanname;
}
