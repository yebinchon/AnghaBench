
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * connection; } ;
typedef int PGconn ;
typedef TYPE_1__ ArchiveHandle ;
typedef int Archive ;


 int ALWAYS_SECURE_SEARCH_PATH_SQL ;
 int ExecuteSqlQueryForSingleRow (int *,int ) ;
 int PQclear (int ) ;
 char* PQdb (int *) ;
 int PQfinish (int *) ;
 char* PQuser (int *) ;
 int * _connectDB (TYPE_1__*,char const*,char const*) ;
 int set_archive_cancel_info (TYPE_1__*,int *) ;

void
ReconnectToServer(ArchiveHandle *AH, const char *dbname, const char *username)
{
 PGconn *newConn;
 const char *newdbname;
 const char *newusername;

 if (!dbname)
  newdbname = PQdb(AH->connection);
 else
  newdbname = dbname;

 if (!username)
  newusername = PQuser(AH->connection);
 else
  newusername = username;

 newConn = _connectDB(AH, newdbname, newusername);


 set_archive_cancel_info(AH, newConn);

 PQfinish(AH->connection);
 AH->connection = newConn;


 PQclear(ExecuteSqlQueryForSingleRow((Archive *) AH,
          ALWAYS_SECURE_SEARCH_PATH_SQL));
}
