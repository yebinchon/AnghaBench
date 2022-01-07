
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {TYPE_2__* ropt; scalar_t__ n_errors; } ;
struct TYPE_18__ {scalar_t__ mode; int * connection; int (* ClonePtr ) (TYPE_4__*) ;TYPE_1__ public; scalar_t__ savedPassword; int * currTablespace; int * currSchema; int * currUser; int * connCancel; int sqlparse; } ;
struct TYPE_17__ {int data; } ;
struct TYPE_16__ {char* pghost; char* pgport; char* username; int promptPassword; int dbname; } ;
typedef TYPE_2__ RestoreOptions ;
typedef TYPE_3__ PQExpBufferData ;
typedef TYPE_4__ ArchiveHandle ;
typedef int Archive ;


 int Assert (int ) ;
 int ConnectDatabase (int *,int ,char*,char*,char*,int ) ;
 int PQdb (int *) ;
 char* PQhost (int *) ;
 char* PQport (int *) ;
 char* PQuser (int *) ;
 int TRI_NO ;
 int _doSetFixedOutputState (TYPE_4__*) ;
 int appendConnStrVal (TYPE_3__*,int ) ;
 int appendPQExpBufferStr (TYPE_3__*,char*) ;
 scalar_t__ archModeRead ;
 int initPQExpBuffer (TYPE_3__*) ;
 int memcpy (TYPE_4__*,TYPE_4__*,int) ;
 int memset (int *,int ,int) ;
 scalar_t__ pg_malloc (int) ;
 scalar_t__ pg_strdup (scalar_t__) ;
 int stub1 (TYPE_4__*) ;
 int termPQExpBuffer (TYPE_3__*) ;

ArchiveHandle *
CloneArchive(ArchiveHandle *AH)
{
 ArchiveHandle *clone;


 clone = (ArchiveHandle *) pg_malloc(sizeof(ArchiveHandle));
 memcpy(clone, AH, sizeof(ArchiveHandle));


 memset(&(clone->sqlparse), 0, sizeof(clone->sqlparse));


 clone->connection = ((void*)0);
 clone->connCancel = ((void*)0);
 clone->currUser = ((void*)0);
 clone->currSchema = ((void*)0);
 clone->currTablespace = ((void*)0);


 if (clone->savedPassword)
  clone->savedPassword = pg_strdup(clone->savedPassword);


 clone->public.n_errors = 0;







 if (AH->mode == archModeRead)
 {
  RestoreOptions *ropt = AH->public.ropt;

  Assert(AH->connection == ((void*)0));


  ConnectDatabase((Archive *) clone, ropt->dbname,
      ropt->pghost, ropt->pgport, ropt->username,
      ropt->promptPassword);


  _doSetFixedOutputState(clone);
 }
 else
 {
  PQExpBufferData connstr;
  char *pghost;
  char *pgport;
  char *username;

  Assert(AH->connection != ((void*)0));







  initPQExpBuffer(&connstr);
  appendPQExpBufferStr(&connstr, "dbname=");
  appendConnStrVal(&connstr, PQdb(AH->connection));
  pghost = PQhost(AH->connection);
  pgport = PQport(AH->connection);
  username = PQuser(AH->connection);


  ConnectDatabase((Archive *) clone, connstr.data,
      pghost, pgport, username, TRI_NO);

  termPQExpBuffer(&connstr);

 }


 clone->ClonePtr(clone);

 Assert(clone->connection != ((void*)0));
 return clone;
}
