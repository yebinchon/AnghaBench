
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__** commands; } ;
struct TYPE_10__ {int id; int* prepared; size_t use_file; int command; int ecnt; int con; } ;
struct TYPE_9__ {char** argv; scalar_t__ type; scalar_t__ argc; } ;
typedef int PGresult ;
typedef TYPE_1__ Command ;
typedef TYPE_2__ CState ;


 int MAX_ARGS ;
 int MAX_PREPARE_NAME ;
 scalar_t__ PGRES_COMMAND_OK ;
 int PQclear (int *) ;
 char* PQerrorMessage (int ) ;
 int * PQprepare (int ,char*,char*,scalar_t__,int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int PQsendQuery (int ,char*) ;
 int PQsendQueryParams (int ,char const*,scalar_t__,int *,char const**,int *,int *,int ) ;
 int PQsendQueryPrepared (int ,char*,scalar_t__,char const**,int *,int *,int ) ;
 scalar_t__ QUERY_EXTENDED ;
 scalar_t__ QUERY_PREPARED ;
 scalar_t__ QUERY_SIMPLE ;
 scalar_t__ SQL_COMMAND ;
 char* assignVariables (TYPE_2__*,char*) ;
 scalar_t__ debug ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int getQueryParams (TYPE_2__*,TYPE_1__*,char const**) ;
 char* pg_strdup (char*) ;
 int preparedStatementName (char*,size_t,int) ;
 scalar_t__ querymode ;
 TYPE_3__* sql_script ;
 int stderr ;

__attribute__((used)) static bool
sendCommand(CState *st, Command *command)
{
 int r;

 if (querymode == QUERY_SIMPLE)
 {
  char *sql;

  sql = pg_strdup(command->argv[0]);
  sql = assignVariables(st, sql);

  if (debug)
   fprintf(stderr, "client %d sending %s\n", st->id, sql);
  r = PQsendQuery(st->con, sql);
  free(sql);
 }
 else if (querymode == QUERY_EXTENDED)
 {
  const char *sql = command->argv[0];
  const char *params[MAX_ARGS];

  getQueryParams(st, command, params);

  if (debug)
   fprintf(stderr, "client %d sending %s\n", st->id, sql);
  r = PQsendQueryParams(st->con, sql, command->argc - 1,
         ((void*)0), params, ((void*)0), ((void*)0), 0);
 }
 else if (querymode == QUERY_PREPARED)
 {
  char name[MAX_PREPARE_NAME];
  const char *params[MAX_ARGS];

  if (!st->prepared[st->use_file])
  {
   int j;
   Command **commands = sql_script[st->use_file].commands;

   for (j = 0; commands[j] != ((void*)0); j++)
   {
    PGresult *res;
    char name[MAX_PREPARE_NAME];

    if (commands[j]->type != SQL_COMMAND)
     continue;
    preparedStatementName(name, st->use_file, j);
    res = PQprepare(st->con, name,
        commands[j]->argv[0], commands[j]->argc - 1, ((void*)0));
    if (PQresultStatus(res) != PGRES_COMMAND_OK)
     fprintf(stderr, "%s", PQerrorMessage(st->con));
    PQclear(res);
   }
   st->prepared[st->use_file] = 1;
  }

  getQueryParams(st, command, params);
  preparedStatementName(name, st->use_file, st->command);

  if (debug)
   fprintf(stderr, "client %d sending %s\n", st->id, name);
  r = PQsendQueryPrepared(st->con, name, command->argc - 1,
        params, ((void*)0), ((void*)0), 0);
 }
 else
  r = 0;

 if (r == 0)
 {
  if (debug)
   fprintf(stderr, "client %d could not send %s\n",
     st->id, command->argv[0]);
  st->ecnt++;
  return 0;
 }
 else
  return 1;
}
