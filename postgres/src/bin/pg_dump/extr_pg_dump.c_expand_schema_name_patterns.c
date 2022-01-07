
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int data; } ;
struct TYPE_11__ {TYPE_1__* head; } ;
struct TYPE_10__ {int val; struct TYPE_10__* next; } ;
typedef TYPE_1__ SimpleStringListCell ;
typedef TYPE_2__ SimpleStringList ;
typedef int SimpleOidList ;
typedef TYPE_3__* PQExpBuffer ;
typedef int PGresult ;
typedef int Archive ;


 int * ExecuteSqlQuery (int *,int ,int ) ;
 int GetConnection (int *) ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQgetvalue (int *,int,int ) ;
 int PQntuples (int *) ;
 int appendPQExpBufferStr (TYPE_3__*,char*) ;
 int atooid (int ) ;
 TYPE_3__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_3__*) ;
 int fatal (char*,int ) ;
 int processSQLNamePattern (int ,TYPE_3__*,int ,int,int,int *,char*,int *,int *) ;
 int resetPQExpBuffer (TYPE_3__*) ;
 int simple_oid_list_append (int *,int ) ;

__attribute__((used)) static void
expand_schema_name_patterns(Archive *fout,
       SimpleStringList *patterns,
       SimpleOidList *oids,
       bool strict_names)
{
 PQExpBuffer query;
 PGresult *res;
 SimpleStringListCell *cell;
 int i;

 if (patterns->head == ((void*)0))
  return;

 query = createPQExpBuffer();






 for (cell = patterns->head; cell; cell = cell->next)
 {
  appendPQExpBufferStr(query,
        "SELECT oid FROM pg_catalog.pg_namespace n\n");
  processSQLNamePattern(GetConnection(fout), query, cell->val, 0,
         0, ((void*)0), "n.nspname", ((void*)0), ((void*)0));

  res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);
  if (strict_names && PQntuples(res) == 0)
   fatal("no matching schemas were found for pattern \"%s\"", cell->val);

  for (i = 0; i < PQntuples(res); i++)
  {
   simple_oid_list_append(oids, atooid(PQgetvalue(res, i, 0)));
  }

  PQclear(res);
  resetPQExpBuffer(query);
 }

 destroyPQExpBuffer(query);
}
