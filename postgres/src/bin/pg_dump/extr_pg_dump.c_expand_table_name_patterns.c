
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


 int ALWAYS_SECURE_SEARCH_PATH_SQL ;
 int * ExecuteSqlQuery (int *,int ,int ) ;
 int * ExecuteSqlQueryForSingleRow (int *,int ) ;
 int ExecuteSqlStatement (int *,char*) ;
 int GetConnection (int *) ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQgetvalue (int *,int,int ) ;
 int PQntuples (int *) ;
 int RELKIND_FOREIGN_TABLE ;
 int RELKIND_MATVIEW ;
 int RELKIND_PARTITIONED_TABLE ;
 int RELKIND_RELATION ;
 int RELKIND_SEQUENCE ;
 int RELKIND_VIEW ;
 int appendPQExpBuffer (TYPE_3__*,char*,int ,int ,int ,int ,int ,int ) ;
 int atooid (int ) ;
 TYPE_3__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_3__*) ;
 int fatal (char*,int ) ;
 int processSQLNamePattern (int ,TYPE_3__*,int ,int,int,char*,char*,int *,char*) ;
 int resetPQExpBuffer (TYPE_3__*) ;
 int simple_oid_list_append (int *,int ) ;

__attribute__((used)) static void
expand_table_name_patterns(Archive *fout,
         SimpleStringList *patterns, SimpleOidList *oids,
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





  appendPQExpBuffer(query,
        "SELECT c.oid"
        "\nFROM pg_catalog.pg_class c"
        "\n     LEFT JOIN pg_catalog.pg_namespace n"
        "\n     ON n.oid OPERATOR(pg_catalog.=) c.relnamespace"
        "\nWHERE c.relkind OPERATOR(pg_catalog.=) ANY"
        "\n    (array['%c', '%c', '%c', '%c', '%c', '%c'])\n",
        RELKIND_RELATION, RELKIND_SEQUENCE, RELKIND_VIEW,
        RELKIND_MATVIEW, RELKIND_FOREIGN_TABLE,
        RELKIND_PARTITIONED_TABLE);
  processSQLNamePattern(GetConnection(fout), query, cell->val, 1,
         0, "n.nspname", "c.relname", ((void*)0),
         "pg_catalog.pg_table_is_visible(c.oid)");

  ExecuteSqlStatement(fout, "RESET search_path");
  res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);
  PQclear(ExecuteSqlQueryForSingleRow(fout,
           ALWAYS_SECURE_SEARCH_PATH_SQL));
  if (strict_names && PQntuples(res) == 0)
   fatal("no matching tables were found for pattern \"%s\"", cell->val);

  for (i = 0; i < PQntuples(res); i++)
  {
   simple_oid_list_append(oids, atooid(PQgetvalue(res, i, 0)));
  }

  PQclear(res);
  resetPQExpBuffer(query);
 }

 destroyPQExpBuffer(query);
}
