
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {char* currTableAm; int connection; } ;
struct TYPE_10__ {int data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef int PGresult ;
typedef TYPE_2__ ArchiveHandle ;


 scalar_t__ PGRES_COMMAND_OK ;
 int PQclear (int *) ;
 int PQerrorMessage (int ) ;
 int * PQexec (int ,int ) ;
 scalar_t__ PQresultStatus (int *) ;
 scalar_t__ RestoringToDB (TYPE_2__*) ;
 int ahprintf (TYPE_2__*,char*,int ) ;
 int appendPQExpBuffer (TYPE_1__*,char*,int ) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 int fmtId (char const*) ;
 char* pg_strdup (char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int warn_or_exit_horribly (TYPE_2__*,char*,int ) ;

__attribute__((used)) static void
_selectTableAccessMethod(ArchiveHandle *AH, const char *tableam)
{
 PQExpBuffer cmd;
 const char *want,
      *have;

 have = AH->currTableAm;
 want = tableam;

 if (!want)
  return;

 if (have && strcmp(want, have) == 0)
  return;

 cmd = createPQExpBuffer();
 appendPQExpBuffer(cmd, "SET default_table_access_method = %s;", fmtId(want));

 if (RestoringToDB(AH))
 {
  PGresult *res;

  res = PQexec(AH->connection, cmd->data);

  if (!res || PQresultStatus(res) != PGRES_COMMAND_OK)
   warn_or_exit_horribly(AH,
          "could not set default_table_access_method: %s",
          PQerrorMessage(AH->connection));

  PQclear(res);
 }
 else
  ahprintf(AH, "%s\n\n", cmd->data);

 destroyPQExpBuffer(cmd);

 AH->currTableAm = pg_strdup(want);
}
