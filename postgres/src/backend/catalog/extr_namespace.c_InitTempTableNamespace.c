
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int namespaceName ;
struct TYPE_2__ {void* tempNamespaceId; } ;
typedef void* Oid ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_CREATE_TEMP ;
 int Assert (int) ;
 int AssertState (int) ;
 int BOOTSTRAP_SUPERUSERID ;
 int CommandCounterIncrement () ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_READ_ONLY_SQL_TRANSACTION ;
 int ERROR ;
 scalar_t__ GetCurrentSubTransactionId () ;
 int GetUserId () ;
 scalar_t__ InvalidSubTransactionId ;
 scalar_t__ IsParallelWorker () ;
 int MyBackendId ;
 int MyDatabaseId ;
 TYPE_1__* MyProc ;
 int NAMEDATALEN ;
 void* NamespaceCreate (char*,int ,int) ;
 int OidIsValid (void*) ;
 scalar_t__ RecoveryInProgress () ;
 int RemoveTempRelations (void*) ;
 int baseSearchPathValid ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int get_database_name (int ) ;
 void* get_namespace_oid (char*,int) ;
 void* myTempNamespace ;
 scalar_t__ myTempNamespaceSubID ;
 void* myTempToastNamespace ;
 scalar_t__ pg_database_aclcheck (int ,int ,int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
InitTempTableNamespace(void)
{
 char namespaceName[NAMEDATALEN];
 Oid namespaceId;
 Oid toastspaceId;

 Assert(!OidIsValid(myTempNamespace));
 if (pg_database_aclcheck(MyDatabaseId, GetUserId(),
        ACL_CREATE_TEMP) != ACLCHECK_OK)
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("permission denied to create temporary tables in database \"%s\"",
      get_database_name(MyDatabaseId))));
 if (RecoveryInProgress())
  ereport(ERROR,
    (errcode(ERRCODE_READ_ONLY_SQL_TRANSACTION),
     errmsg("cannot create temporary tables during recovery")));


 if (IsParallelWorker())
  ereport(ERROR,
    (errcode(ERRCODE_READ_ONLY_SQL_TRANSACTION),
     errmsg("cannot create temporary tables during a parallel operation")));

 snprintf(namespaceName, sizeof(namespaceName), "pg_temp_%d", MyBackendId);

 namespaceId = get_namespace_oid(namespaceName, 1);
 if (!OidIsValid(namespaceId))
 {
  namespaceId = NamespaceCreate(namespaceName, BOOTSTRAP_SUPERUSERID,
           1);

  CommandCounterIncrement();
 }
 else
 {




  RemoveTempRelations(namespaceId);
 }






 snprintf(namespaceName, sizeof(namespaceName), "pg_toast_temp_%d",
    MyBackendId);

 toastspaceId = get_namespace_oid(namespaceName, 1);
 if (!OidIsValid(toastspaceId))
 {
  toastspaceId = NamespaceCreate(namespaceName, BOOTSTRAP_SUPERUSERID,
            1);

  CommandCounterIncrement();
 }






 myTempNamespace = namespaceId;
 myTempToastNamespace = toastspaceId;
 MyProc->tempNamespaceId = namespaceId;


 AssertState(myTempNamespaceSubID == InvalidSubTransactionId);
 myTempNamespaceSubID = GetCurrentSubTransactionId();

 baseSearchPathValid = 0;
}
