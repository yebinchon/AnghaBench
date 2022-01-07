
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pgCopyIn; int connection; } ;
typedef int PGresult ;
typedef TYPE_1__ ArchiveHandle ;
typedef int Archive ;


 scalar_t__ PGRES_COMMAND_OK ;
 int PQclear (int *) ;
 int PQerrorMessage (int ) ;
 int * PQgetResult (int ) ;
 scalar_t__ PQputCopyEnd (int ,int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int fatal (char*,int ) ;
 int pg_log_warning (char*,char const*) ;
 int warn_or_exit_horribly (TYPE_1__*,char*,char const*,int ) ;

void
EndDBCopyMode(Archive *AHX, const char *tocEntryTag)
{
 ArchiveHandle *AH = (ArchiveHandle *) AHX;

 if (AH->pgCopyIn)
 {
  PGresult *res;

  if (PQputCopyEnd(AH->connection, ((void*)0)) <= 0)
   fatal("error returned by PQputCopyEnd: %s",
      PQerrorMessage(AH->connection));


  res = PQgetResult(AH->connection);
  if (PQresultStatus(res) != PGRES_COMMAND_OK)
   warn_or_exit_horribly(AH, "COPY failed for table \"%s\": %s",
          tocEntryTag, PQerrorMessage(AH->connection));
  PQclear(res);


  if (PQgetResult(AH->connection) != ((void*)0))
   pg_log_warning("unexpected extra results during COPY of table \"%s\"",
         tocEntryTag);

  AH->pgCopyIn = 0;
 }
}
