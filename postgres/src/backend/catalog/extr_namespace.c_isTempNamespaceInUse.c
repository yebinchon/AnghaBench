
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ databaseId; scalar_t__ tempNamespaceId; } ;
typedef TYPE_1__ PGPROC ;
typedef scalar_t__ Oid ;


 int Assert (int ) ;
 TYPE_1__* BackendIdGetProc (int) ;
 int GetTempNamespaceBackendId (scalar_t__) ;
 int InvalidBackendId ;
 int MyBackendId ;
 scalar_t__ MyDatabaseId ;
 int OidIsValid (scalar_t__) ;

bool
isTempNamespaceInUse(Oid namespaceId)
{
 PGPROC *proc;
 int backendId;

 Assert(OidIsValid(MyDatabaseId));

 backendId = GetTempNamespaceBackendId(namespaceId);

 if (backendId == InvalidBackendId ||
  backendId == MyBackendId)
  return 0;


 proc = BackendIdGetProc(backendId);
 if (proc == ((void*)0))
  return 0;


 if (proc->databaseId != MyDatabaseId)
  return 0;


 if (proc->tempNamespaceId != namespaceId)
  return 0;


 return 1;
}
