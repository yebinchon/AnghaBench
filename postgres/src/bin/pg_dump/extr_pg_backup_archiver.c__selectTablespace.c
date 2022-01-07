
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* ropt; } ;
struct TYPE_16__ {char* currTablespace; int connection; TYPE_1__ public; } ;
struct TYPE_15__ {int data; } ;
struct TYPE_14__ {scalar_t__ noTablespace; } ;
typedef TYPE_2__ RestoreOptions ;
typedef TYPE_3__* PQExpBuffer ;
typedef int PGresult ;
typedef TYPE_4__ ArchiveHandle ;


 scalar_t__ PGRES_COMMAND_OK ;
 int PQclear (int *) ;
 int PQerrorMessage (int ) ;
 int * PQexec (int ,int ) ;
 scalar_t__ PQresultStatus (int *) ;
 scalar_t__ RestoringToDB (TYPE_4__*) ;
 int ahprintf (TYPE_4__*,char*,int ) ;
 int appendPQExpBuffer (TYPE_3__*,char*,int ) ;
 int appendPQExpBufferStr (TYPE_3__*,char*) ;
 TYPE_3__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_3__*) ;
 int fmtId (char const*) ;
 int free (char*) ;
 char* pg_strdup (char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int warn_or_exit_horribly (TYPE_4__*,char*,int ,int ) ;

__attribute__((used)) static void
_selectTablespace(ArchiveHandle *AH, const char *tablespace)
{
 RestoreOptions *ropt = AH->public.ropt;
 PQExpBuffer qry;
 const char *want,
      *have;


 if (ropt->noTablespace)
  return;

 have = AH->currTablespace;
 want = tablespace;


 if (!want)
  return;

 if (have && strcmp(want, have) == 0)
  return;

 qry = createPQExpBuffer();

 if (strcmp(want, "") == 0)
 {

  appendPQExpBufferStr(qry, "SET default_tablespace = ''");
 }
 else
 {

  appendPQExpBuffer(qry, "SET default_tablespace = %s", fmtId(want));
 }

 if (RestoringToDB(AH))
 {
  PGresult *res;

  res = PQexec(AH->connection, qry->data);

  if (!res || PQresultStatus(res) != PGRES_COMMAND_OK)
   warn_or_exit_horribly(AH,
          "could not set default_tablespace to %s: %s",
          fmtId(want), PQerrorMessage(AH->connection));

  PQclear(res);
 }
 else
  ahprintf(AH, "%s;\n\n", qry->data);

 if (AH->currTablespace)
  free(AH->currTablespace);
 AH->currTablespace = pg_strdup(want);

 destroyPQExpBuffer(qry);
}
