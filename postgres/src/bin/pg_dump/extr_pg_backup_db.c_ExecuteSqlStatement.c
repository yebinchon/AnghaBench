
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int connection; } ;
typedef int PGresult ;
typedef TYPE_1__ ArchiveHandle ;
typedef int Archive ;


 scalar_t__ PGRES_COMMAND_OK ;
 int PQclear (int *) ;
 int * PQexec (int ,char const*) ;
 scalar_t__ PQresultStatus (int *) ;
 int die_on_query_failure (TYPE_1__*,char const*) ;

void
ExecuteSqlStatement(Archive *AHX, const char *query)
{
 ArchiveHandle *AH = (ArchiveHandle *) AHX;
 PGresult *res;

 res = PQexec(AH->connection, query);
 if (PQresultStatus(res) != PGRES_COMMAND_OK)
  die_on_query_failure(AH, query);
 PQclear(res);
}
