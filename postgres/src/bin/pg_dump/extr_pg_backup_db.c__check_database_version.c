
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int remoteVersion; int minRemoteVersion; int maxRemoteVersion; int isStandby; int remoteVersionStr; } ;
struct TYPE_5__ {TYPE_1__ public; int archiveRemoteVersion; int connection; } ;
typedef int PGresult ;
typedef TYPE_2__ ArchiveHandle ;
typedef int Archive ;


 int * ExecuteSqlQueryForSingleRow (int *,char*) ;
 int PG_VERSION ;
 int PG_VERSION_NUM ;
 int PQclear (int *) ;
 int PQgetvalue (int *,int ,int ) ;
 char* PQparameterStatus (int ,char*) ;
 int PQserverVersion (int ) ;
 int fatal (char*) ;
 int pg_log_error (char*,char const*,int ,int ) ;
 int pg_strdup (char const*) ;
 int progname ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void
_check_database_version(ArchiveHandle *AH)
{
 const char *remoteversion_str;
 int remoteversion;
 PGresult *res;

 remoteversion_str = PQparameterStatus(AH->connection, "server_version");
 remoteversion = PQserverVersion(AH->connection);
 if (remoteversion == 0 || !remoteversion_str)
  fatal("could not get server_version from libpq");

 AH->public.remoteVersionStr = pg_strdup(remoteversion_str);
 AH->public.remoteVersion = remoteversion;
 if (!AH->archiveRemoteVersion)
  AH->archiveRemoteVersion = AH->public.remoteVersionStr;

 if (remoteversion != PG_VERSION_NUM
  && (remoteversion < AH->public.minRemoteVersion ||
   remoteversion > AH->public.maxRemoteVersion))
 {
  pg_log_error("server version: %s; %s version: %s",
      remoteversion_str, progname, PG_VERSION);
  fatal("aborting because of server version mismatch");
 }





 if (remoteversion >= 90000)
 {
  res = ExecuteSqlQueryForSingleRow((Archive *) AH, "SELECT pg_catalog.pg_is_in_recovery()");

  AH->public.isStandby = (strcmp(PQgetvalue(res, 0, 0), "t") == 0);
  PQclear(res);
 }
 else
  AH->public.isStandby = 0;
}
