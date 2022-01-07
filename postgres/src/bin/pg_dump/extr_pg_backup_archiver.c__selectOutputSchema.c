
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ searchpath; } ;
struct TYPE_14__ {char const* currSchema; int connection; TYPE_1__ public; } ;
struct TYPE_13__ {int data; } ;
typedef TYPE_2__* PQExpBuffer ;
typedef int PGresult ;
typedef TYPE_3__ ArchiveHandle ;


 scalar_t__ PGRES_COMMAND_OK ;
 int PQclear (int *) ;
 int PQerrorMessage (int ) ;
 int * PQexec (int ,int ) ;
 scalar_t__ PQresultStatus (int *) ;
 scalar_t__ RestoringToDB (TYPE_3__*) ;
 int ahprintf (TYPE_3__*,char*,int ) ;
 int appendPQExpBuffer (TYPE_2__*,char*,int ) ;
 int appendPQExpBufferStr (TYPE_2__*,char*) ;
 TYPE_2__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_2__*) ;
 int fmtId (char const*) ;
 int free (char const*) ;
 char const* pg_strdup (char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int warn_or_exit_horribly (TYPE_3__*,char*,char const*,int ) ;

__attribute__((used)) static void
_selectOutputSchema(ArchiveHandle *AH, const char *schemaName)
{
 PQExpBuffer qry;







 if (AH->public.searchpath)
  return;

 if (!schemaName || *schemaName == '\0' ||
  (AH->currSchema && strcmp(AH->currSchema, schemaName) == 0))
  return;

 qry = createPQExpBuffer();

 appendPQExpBuffer(qry, "SET search_path = %s",
       fmtId(schemaName));
 if (strcmp(schemaName, "pg_catalog") != 0)
  appendPQExpBufferStr(qry, ", pg_catalog");

 if (RestoringToDB(AH))
 {
  PGresult *res;

  res = PQexec(AH->connection, qry->data);

  if (!res || PQresultStatus(res) != PGRES_COMMAND_OK)
   warn_or_exit_horribly(AH,
          "could not set search_path to \"%s\": %s",
          schemaName, PQerrorMessage(AH->connection));

  PQclear(res);
 }
 else
  ahprintf(AH, "%s;\n\n", qry->data);

 if (AH->currSchema)
  free(AH->currSchema);
 AH->currSchema = pg_strdup(schemaName);

 destroyPQExpBuffer(qry);
}
