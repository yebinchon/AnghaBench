
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef int PGresult ;
typedef int OidOptions ;
typedef int Oid ;
typedef int Archive ;


 int * ExecuteSqlQueryForSingleRow (int *,int ) ;
 int PQclear (int *) ;
 char* PQgetvalue (int *,int ,int ) ;
 int appendPQExpBuffer (TYPE_1__*,char*,int ) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 char* g_opaque_type ;
 char* pg_strdup (char*) ;
 int zeroAsAny ;
 int zeroAsNone ;
 int zeroAsOpaque ;
 int zeroAsStar ;

__attribute__((used)) static char *
getFormattedTypeName(Archive *fout, Oid oid, OidOptions opts)
{
 char *result;
 PQExpBuffer query;
 PGresult *res;

 if (oid == 0)
 {
  if ((opts & zeroAsOpaque) != 0)
   return pg_strdup(g_opaque_type);
  else if ((opts & zeroAsAny) != 0)
   return pg_strdup("'any'");
  else if ((opts & zeroAsStar) != 0)
   return pg_strdup("*");
  else if ((opts & zeroAsNone) != 0)
   return pg_strdup("NONE");
 }

 query = createPQExpBuffer();
 appendPQExpBuffer(query, "SELECT pg_catalog.format_type('%u'::pg_catalog.oid, NULL)",
       oid);

 res = ExecuteSqlQueryForSingleRow(fout, query->data);


 result = pg_strdup(PQgetvalue(res, 0, 0));

 PQclear(res);
 destroyPQExpBuffer(query);

 return result;
}
