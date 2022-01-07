
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int dbname ;
struct TYPE_8__ {char* databaseId; } ;
struct TYPE_7__ {scalar_t__ canAcceptConnections; } ;
struct TYPE_6__ {char* oid; scalar_t__ dattablespace; int datname; } ;
typedef char* Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_database ;


 int Assert (int) ;
 scalar_t__ CAC_WAITBACKUP ;
 int CheckDeadLockAlert ;
 int CheckMyDatabase (char*,int,int) ;
 int CommitTransactionCommand () ;
 int CreateAuxProcessResourceOwner () ;
 int * CurrentResourceOwner ;
 int DEADLOCK_TIMEOUT ;
 int DEBUG3 ;
 scalar_t__ DEFAULTTABLESPACE_OID ;
 int DatabaseRelationId ;
 scalar_t__ ENOENT ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_TOO_MANY_CONNECTIONS ;
 int ERRCODE_UNDEFINED_DATABASE ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int EnablePortalManager () ;
 int FATAL ;
 int F_OK ;
 scalar_t__ GETSTRUCT (int ) ;
 char* GetDatabasePath (char*,scalar_t__) ;
 int GetDatabaseTuple (char const*) ;
 int GetDatabaseTupleByOid (char*) ;
 int GetSessionUserId () ;
 int GetTransactionSnapshot () ;
 int GetUserId () ;
 int HaveNFreeProcs (scalar_t__) ;
 int HeapTupleIsValid (int ) ;
 int IDLE_IN_TRANSACTION_SESSION_TIMEOUT ;
 int IdleInTransactionSessionTimeoutHandler ;
 int InitBufferPoolBackend () ;
 int InitCatalogCache () ;
 int InitPlanCache () ;
 int InitProcessPhase2 () ;
 int InitializeClientEncoding () ;
 int InitializeSearchPath () ;
 int InitializeSession () ;
 int InitializeSessionUserId (char const*,char*) ;
 int InitializeSessionUserIdStandalone () ;
 scalar_t__ InvalidBackendId ;
 int InvalidateCatalogSnapshot () ;
 scalar_t__ IsAutoVacuumLauncherProcess () ;
 scalar_t__ IsAutoVacuumWorkerProcess () ;
 scalar_t__ IsBackgroundWorker ;
 scalar_t__ IsBinaryUpgrade ;
 int IsBootstrapProcessingMode () ;
 scalar_t__ IsUnderPostmaster ;
 int LOCK_TIMEOUT ;
 int LockSharedObject (int ,char*,int ,int ) ;
 int LockTimeoutHandler ;
 scalar_t__ MaxBackends ;
 scalar_t__ MyBackendId ;
 char* MyDatabaseId ;
 scalar_t__ MyDatabaseTableSpace ;
 TYPE_5__* MyProc ;
 TYPE_2__* MyProcPort ;
 int NAMEDATALEN ;
 char const* NameStr (int ) ;
 scalar_t__ OidIsValid (char*) ;
 int PerformAuthentication (TYPE_2__*) ;
 long PostAuthDelay ;
 int ProcSignalInit (scalar_t__) ;
 int RecoveryInProgress () ;
 int RegisterTimeout (int ,int ) ;
 int RelationCacheInitialize () ;
 int RelationCacheInitializePhase2 () ;
 int RelationCacheInitializePhase3 () ;
 int ReleaseAuxProcessResources (int) ;
 scalar_t__ ReservedBackends ;
 int RowExclusiveLock ;
 int STATEMENT_TIMEOUT ;
 int SetCurrentStatementStartTimestamp () ;
 int SetDatabasePath (char*) ;
 int SharedInvalBackendInit (int) ;
 int ShutdownPostgres ;
 int ShutdownXLOG ;
 int StartTransactionCommand () ;
 int StartupXLOG () ;
 int StatementTimeoutHandler ;
 char* TemplateDbOid ;
 int ThereIsAtLeastOneRole () ;
 int ValidatePgVersion (char*) ;
 int WARNING ;
 int XACT_READ_COMMITTED ;
 int XactIsoLevel ;
 int access (char*,int ) ;
 int am_db_walsender ;
 scalar_t__ am_walsender ;
 int before_shmem_exit (int ,int ) ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errdetail (char*,...) ;
 int errhint (char*,char const*) ;
 int errmsg (char*,...) ;
 scalar_t__ errno ;
 int has_rolreplication (int ) ;
 int initialize_acl () ;
 int on_shmem_exit (int ,int ) ;
 int pg_usleep (long) ;
 int pgstat_bestart () ;
 int pgstat_initialize () ;
 int process_settings (char*,int ) ;
 int process_startup_options (TYPE_2__*,int) ;
 int strcpy (char*,char*) ;
 int strlcpy (char*,char const*,int) ;
 int superuser () ;

void
InitPostgres(const char *in_dbname, Oid dboid, const char *username,
    Oid useroid, char *out_dbname, bool override_allow_connections)
{
 bool bootstrap = IsBootstrapProcessingMode();
 bool am_superuser;
 char *fullpath;
 char dbname[NAMEDATALEN];

 elog(DEBUG3, "InitPostgres");






 InitProcessPhase2();







 MyBackendId = InvalidBackendId;

 SharedInvalBackendInit(0);

 if (MyBackendId > MaxBackends || MyBackendId <= 0)
  elog(FATAL, "bad backend ID: %d", MyBackendId);


 ProcSignalInit(MyBackendId);





 if (!bootstrap)
 {
  RegisterTimeout(DEADLOCK_TIMEOUT, CheckDeadLockAlert);
  RegisterTimeout(STATEMENT_TIMEOUT, StatementTimeoutHandler);
  RegisterTimeout(LOCK_TIMEOUT, LockTimeoutHandler);
  RegisterTimeout(IDLE_IN_TRANSACTION_SESSION_TIMEOUT,
      IdleInTransactionSessionTimeoutHandler);
 }




 InitBufferPoolBackend();




 if (IsUnderPostmaster)
 {






  (void) RecoveryInProgress();
 }
 else
 {
  CreateAuxProcessResourceOwner();

  StartupXLOG();

  ReleaseAuxProcessResources(1);

  CurrentResourceOwner = ((void*)0);

  on_shmem_exit(ShutdownXLOG, 0);
 }







 RelationCacheInitialize();
 InitCatalogCache();
 InitPlanCache();


 EnablePortalManager();


 if (!bootstrap)
  pgstat_initialize();





 RelationCacheInitializePhase2();
 before_shmem_exit(ShutdownPostgres, 0);


 if (IsAutoVacuumLauncherProcess())
 {

  pgstat_bestart();

  return;
 }
 if (!bootstrap)
 {

  SetCurrentStatementStartTimestamp();
  StartTransactionCommand();







  XactIsoLevel = XACT_READ_COMMITTED;

  (void) GetTransactionSnapshot();
 }
 if (bootstrap || IsAutoVacuumWorkerProcess())
 {
  InitializeSessionUserIdStandalone();
  am_superuser = 1;
 }
 else if (!IsUnderPostmaster)
 {
  InitializeSessionUserIdStandalone();
  am_superuser = 1;
  if (!ThereIsAtLeastOneRole())
   ereport(WARNING,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("no roles are defined in this database system"),
      errhint("You should immediately run CREATE USER \"%s\" SUPERUSER;.",
        username != ((void*)0) ? username : "postgres")));
 }
 else if (IsBackgroundWorker)
 {
  if (username == ((void*)0) && !OidIsValid(useroid))
  {
   InitializeSessionUserIdStandalone();
   am_superuser = 1;
  }
  else
  {
   InitializeSessionUserId(username, useroid);
   am_superuser = superuser();
  }
 }
 else
 {

  Assert(MyProcPort != ((void*)0));
  PerformAuthentication(MyProcPort);
  InitializeSessionUserId(username, useroid);
  am_superuser = superuser();
 }





 if ((!am_superuser || am_walsender) &&
  MyProcPort != ((void*)0) &&
  MyProcPort->canAcceptConnections == CAC_WAITBACKUP)
 {
  if (am_walsender)
   ereport(FATAL,
     (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
      errmsg("new replication connections are not allowed during database shutdown")));
  else
   ereport(FATAL,
     (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
      errmsg("must be superuser to connect during database shutdown")));
 }




 if (IsBinaryUpgrade && !am_superuser)
 {
  ereport(FATAL,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("must be superuser to connect in binary upgrade mode")));
 }






 if (!am_superuser && !am_walsender &&
  ReservedBackends > 0 &&
  !HaveNFreeProcs(ReservedBackends))
  ereport(FATAL,
    (errcode(ERRCODE_TOO_MANY_CONNECTIONS),
     errmsg("remaining connection slots are reserved for non-replication superuser connections")));


 if (am_walsender)
 {
  Assert(!bootstrap);

  if (!superuser() && !has_rolreplication(GetUserId()))
   ereport(FATAL,
     (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
      errmsg("must be superuser or replication role to start walsender")));
 }







 if (am_walsender && !am_db_walsender)
 {

  if (MyProcPort != ((void*)0))
   process_startup_options(MyProcPort, am_superuser);


  if (PostAuthDelay > 0)
   pg_usleep(PostAuthDelay * 1000000L);


  InitializeClientEncoding();


  pgstat_bestart();


  CommitTransactionCommand();

  return;
 }
 if (bootstrap)
 {
  MyDatabaseId = TemplateDbOid;
  MyDatabaseTableSpace = DEFAULTTABLESPACE_OID;
 }
 else if (in_dbname != ((void*)0))
 {
  HeapTuple tuple;
  Form_pg_database dbform;

  tuple = GetDatabaseTuple(in_dbname);
  if (!HeapTupleIsValid(tuple))
   ereport(FATAL,
     (errcode(ERRCODE_UNDEFINED_DATABASE),
      errmsg("database \"%s\" does not exist", in_dbname)));
  dbform = (Form_pg_database) GETSTRUCT(tuple);
  MyDatabaseId = dbform->oid;
  MyDatabaseTableSpace = dbform->dattablespace;

  strlcpy(dbname, in_dbname, sizeof(dbname));
 }
 else if (OidIsValid(dboid))
 {

  HeapTuple tuple;
  Form_pg_database dbform;

  tuple = GetDatabaseTupleByOid(dboid);
  if (!HeapTupleIsValid(tuple))
   ereport(FATAL,
     (errcode(ERRCODE_UNDEFINED_DATABASE),
      errmsg("database %u does not exist", dboid)));
  dbform = (Form_pg_database) GETSTRUCT(tuple);
  MyDatabaseId = dbform->oid;
  MyDatabaseTableSpace = dbform->dattablespace;
  Assert(MyDatabaseId == dboid);
  strlcpy(dbname, NameStr(dbform->datname), sizeof(dbname));

  if (out_dbname)
   strcpy(out_dbname, dbname);
 }
 else
 {






  if (!bootstrap)
  {
   pgstat_bestart();
   CommitTransactionCommand();
  }
  return;
 }
 if (!bootstrap)
  LockSharedObject(DatabaseRelationId, MyDatabaseId, 0,
       RowExclusiveLock);
 MyProc->databaseId = MyDatabaseId;







 InvalidateCatalogSnapshot();






 if (!bootstrap)
 {
  HeapTuple tuple;

  tuple = GetDatabaseTuple(dbname);
  if (!HeapTupleIsValid(tuple) ||
   MyDatabaseId != ((Form_pg_database) GETSTRUCT(tuple))->oid ||
   MyDatabaseTableSpace != ((Form_pg_database) GETSTRUCT(tuple))->dattablespace)
   ereport(FATAL,
     (errcode(ERRCODE_UNDEFINED_DATABASE),
      errmsg("database \"%s\" does not exist", dbname),
      errdetail("It seems to have just been dropped or renamed.")));
 }





 fullpath = GetDatabasePath(MyDatabaseId, MyDatabaseTableSpace);

 if (!bootstrap)
 {
  if (access(fullpath, F_OK) == -1)
  {
   if (errno == ENOENT)
    ereport(FATAL,
      (errcode(ERRCODE_UNDEFINED_DATABASE),
       errmsg("database \"%s\" does not exist",
        dbname),
       errdetail("The database subdirectory \"%s\" is missing.",
           fullpath)));
   else
    ereport(FATAL,
      (errcode_for_file_access(),
       errmsg("could not access directory \"%s\": %m",
        fullpath)));
  }

  ValidatePgVersion(fullpath);
 }

 SetDatabasePath(fullpath);







 RelationCacheInitializePhase3();


 initialize_acl();







 if (!bootstrap)
  CheckMyDatabase(dbname, am_superuser, override_allow_connections);






 if (MyProcPort != ((void*)0))
  process_startup_options(MyProcPort, am_superuser);


 process_settings(MyDatabaseId, GetSessionUserId());


 if (PostAuthDelay > 0)
  pg_usleep(PostAuthDelay * 1000000L);







 InitializeSearchPath();


 InitializeClientEncoding();


 InitializeSession();


 if (!bootstrap)
  pgstat_bestart();


 if (!bootstrap)
  CommitTransactionCommand();
}
