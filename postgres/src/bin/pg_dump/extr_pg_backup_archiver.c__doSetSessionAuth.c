
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int connection; } ;
struct TYPE_12__ {int data; } ;
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
 int appendPQExpBufferChar (TYPE_1__*,char) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 int appendStringLiteralAHX (TYPE_1__*,char const*,TYPE_2__*) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 int fatal (char*,char const*,int ) ;

__attribute__((used)) static void
_doSetSessionAuth(ArchiveHandle *AH, const char *user)
{
 PQExpBuffer cmd = createPQExpBuffer();

 appendPQExpBufferStr(cmd, "SET SESSION AUTHORIZATION ");




 if (user && *user)
  appendStringLiteralAHX(cmd, user, AH);
 else
  appendPQExpBufferStr(cmd, "DEFAULT");
 appendPQExpBufferChar(cmd, ';');

 if (RestoringToDB(AH))
 {
  PGresult *res;

  res = PQexec(AH->connection, cmd->data);

  if (!res || PQresultStatus(res) != PGRES_COMMAND_OK)

   fatal("could not set session user to \"%s\": %s",
      user, PQerrorMessage(AH->connection));

  PQclear(res);
 }
 else
  ahprintf(AH, "%s\n\n", cmd->data);

 destroyPQExpBuffer(cmd);
}
