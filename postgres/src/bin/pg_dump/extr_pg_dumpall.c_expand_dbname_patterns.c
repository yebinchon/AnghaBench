
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int data; } ;
struct TYPE_13__ {TYPE_1__* head; } ;
struct TYPE_12__ {int val; struct TYPE_12__* next; } ;
typedef TYPE_1__ SimpleStringListCell ;
typedef TYPE_2__ SimpleStringList ;
typedef TYPE_3__* PQExpBuffer ;
typedef int PGresult ;
typedef int PGconn ;


 int PQclear (int *) ;
 int PQgetvalue (int *,int,int ) ;
 int PQntuples (int *) ;
 int appendPQExpBufferStr (TYPE_3__*,char*) ;
 TYPE_3__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_3__*) ;
 int * executeQuery (int *,int ) ;
 int processSQLNamePattern (int *,TYPE_3__*,int ,int,int,int *,char*,int *,int *) ;
 int resetPQExpBuffer (TYPE_3__*) ;
 int simple_string_list_append (TYPE_2__*,int ) ;

__attribute__((used)) static void
expand_dbname_patterns(PGconn *conn,
        SimpleStringList *patterns,
        SimpleStringList *names)
{
 PQExpBuffer query;
 PGresult *res;

 if (patterns->head == ((void*)0))
  return;

 query = createPQExpBuffer();







 for (SimpleStringListCell *cell = patterns->head; cell; cell = cell->next)
 {
  appendPQExpBufferStr(query,
        "SELECT datname FROM pg_catalog.pg_database n\n");
  processSQLNamePattern(conn, query, cell->val, 0,
         0, ((void*)0), "datname", ((void*)0), ((void*)0));

  res = executeQuery(conn, query->data);
  for (int i = 0; i < PQntuples(res); i++)
  {
   simple_string_list_append(names, PQgetvalue(res, i, 0));
  }

  PQclear(res);
  resetPQExpBuffer(query);
 }

 destroyPQExpBuffer(query);
}
