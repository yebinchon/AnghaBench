
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int tag; int namespace; int desc; } ;
typedef TYPE_1__ TocEntry ;
struct TYPE_11__ {int connection; } ;
struct TYPE_10__ {int data; } ;
typedef TYPE_2__* PQExpBuffer ;
typedef int PGresult ;
typedef TYPE_3__ ArchiveHandle ;


 scalar_t__ PGRES_COMMAND_OK ;
 int PQclear (int *) ;
 int * PQexec (int ,int ) ;
 scalar_t__ PQresultStatus (int *) ;
 int appendPQExpBuffer (TYPE_2__*,char*,char const*) ;
 TYPE_2__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_2__*) ;
 int fatal (char*,char const*) ;
 char* fmtQualifiedId (int ,int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void
lockTableForWorker(ArchiveHandle *AH, TocEntry *te)
{
 const char *qualId;
 PQExpBuffer query;
 PGresult *res;


 if (strcmp(te->desc, "BLOBS") == 0)
  return;

 query = createPQExpBuffer();

 qualId = fmtQualifiedId(te->namespace, te->tag);

 appendPQExpBuffer(query, "LOCK TABLE %s IN ACCESS SHARE MODE NOWAIT",
       qualId);

 res = PQexec(AH->connection, query->data);

 if (!res || PQresultStatus(res) != PGRES_COMMAND_OK)
  fatal("could not obtain lock on relation \"%s\"\n"
     "This usually means that someone requested an ACCESS EXCLUSIVE lock "
     "on the table after the pg_dump parent process had gotten the "
     "initial ACCESS SHARE lock on the table.", qualId);

 PQclear(res);
 destroyPQExpBuffer(query);
}
