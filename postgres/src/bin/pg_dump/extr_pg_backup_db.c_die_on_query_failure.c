
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int connection; } ;
typedef TYPE_1__ ArchiveHandle ;


 int PQerrorMessage (int ) ;
 int fatal (char*,char const*) ;
 int pg_log_error (char*,int ) ;

__attribute__((used)) static void
die_on_query_failure(ArchiveHandle *AH, const char *query)
{
 pg_log_error("query failed: %s",
     PQerrorMessage(AH->connection));
 fatal("query was: %s", query);
}
