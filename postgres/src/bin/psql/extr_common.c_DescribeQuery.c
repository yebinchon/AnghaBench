
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int instr_time ;
struct TYPE_9__ {int queryFout; scalar_t__ timing; int db; } ;
struct TYPE_8__ {int data; } ;
typedef TYPE_1__ PQExpBufferData ;
typedef int PGresult ;


 int AcceptResult (int *) ;
 int ClearOrSaveResult (int *) ;
 scalar_t__ INSTR_TIME_GET_MILLISEC (int ) ;
 int INSTR_TIME_SET_CURRENT (int ) ;
 int INSTR_TIME_SUBTRACT (int ,int ) ;
 scalar_t__ PGRES_COMMAND_OK ;
 int PQclear (int *) ;
 int * PQdescribePrepared (int ,char*) ;
 int PQerrorMessage (int ) ;
 char* PQescapeLiteral (int ,char const*,int ) ;
 int * PQexec (int ,int ) ;
 int PQfmod (int *,int) ;
 char* PQfname (int *,int) ;
 int PQfreemem (char*) ;
 int PQftype (int *,int) ;
 int PQnfields (int *) ;
 int * PQprepare (int ,char*,char const*,int ,int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int PrintQueryResults (int *) ;
 int SetResultVariables (int *,int) ;
 char* _ (char*) ;
 int appendPQExpBuffer (TYPE_1__*,char*,char*,int ,int ) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 int fprintf (int ,char*) ;
 int gettext_noop (char*) ;
 int initPQExpBuffer (TYPE_1__*) ;
 int pg_log_info (char*,int ) ;
 int printfPQExpBuffer (TYPE_1__*,char*,int ,int ) ;
 TYPE_3__ pset ;
 int strlen (char const*) ;
 int termPQExpBuffer (TYPE_1__*) ;

__attribute__((used)) static bool
DescribeQuery(const char *query, double *elapsed_msec)
{
 PGresult *results;
 bool OK;
 instr_time before,
    after;

 *elapsed_msec = 0;

 if (pset.timing)
  INSTR_TIME_SET_CURRENT(before);
 results = PQprepare(pset.db, "", query, 0, ((void*)0));
 if (PQresultStatus(results) != PGRES_COMMAND_OK)
 {
  pg_log_info("%s", PQerrorMessage(pset.db));
  SetResultVariables(results, 0);
  ClearOrSaveResult(results);
  return 0;
 }
 PQclear(results);

 results = PQdescribePrepared(pset.db, "");
 OK = AcceptResult(results) &&
  (PQresultStatus(results) == PGRES_COMMAND_OK);
 if (OK && results)
 {
  if (PQnfields(results) > 0)
  {
   PQExpBufferData buf;
   int i;

   initPQExpBuffer(&buf);

   printfPQExpBuffer(&buf,
         "SELECT name AS \"%s\", pg_catalog.format_type(tp, tpm) AS \"%s\"\n"
         "FROM (VALUES ",
         gettext_noop("Column"),
         gettext_noop("Type"));

   for (i = 0; i < PQnfields(results); i++)
   {
    const char *name;
    char *escname;

    if (i > 0)
     appendPQExpBufferStr(&buf, ",");

    name = PQfname(results, i);
    escname = PQescapeLiteral(pset.db, name, strlen(name));

    if (escname == ((void*)0))
    {
     pg_log_info("%s", PQerrorMessage(pset.db));
     PQclear(results);
     termPQExpBuffer(&buf);
     return 0;
    }

    appendPQExpBuffer(&buf, "(%s, '%u'::pg_catalog.oid, %d)",
          escname,
          PQftype(results, i),
          PQfmod(results, i));

    PQfreemem(escname);
   }

   appendPQExpBufferStr(&buf, ") s(name, tp, tpm)");
   PQclear(results);

   results = PQexec(pset.db, buf.data);
   OK = AcceptResult(results);

   if (pset.timing)
   {
    INSTR_TIME_SET_CURRENT(after);
    INSTR_TIME_SUBTRACT(after, before);
    *elapsed_msec += INSTR_TIME_GET_MILLISEC(after);
   }

   if (OK && results)
    OK = PrintQueryResults(results);

   termPQExpBuffer(&buf);
  }
  else
   fprintf(pset.queryFout,
     _("The command has no result, or the result has no columns.\n"));
 }

 SetResultVariables(results, OK);
 ClearOrSaveResult(results);

 return OK;
}
