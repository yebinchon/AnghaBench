
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Tag; } ;
struct TYPE_5__ {int DatabaseName; TYPE_1__ Handle; } ;
typedef scalar_t__ SC_HANDLE ;
typedef TYPE_2__* PMANAGER_HANDLE ;
typedef int * LPWSTR ;
typedef int DWORD ;


 int DPRINT (char*,int *) ;
 int * DatabaseName ;
 int ERROR_DATABASE_DOES_NOT_EXIST ;
 int ERROR_INVALID_NAME ;
 int ERROR_NOT_ENOUGH_MEMORY ;
 int ERROR_SUCCESS ;
 int FIELD_OFFSET (int ,int ) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int ) ;
 int MANAGER_HANDLE ;
 int MANAGER_TAG ;
 int * SERVICES_ACTIVE_DATABASEW ;
 int * SERVICES_FAILED_DATABASEW ;
 scalar_t__ _wcsicmp (int *,int *) ;
 int wcscpy (int ,int *) ;
 int wcslen (int *) ;

__attribute__((used)) static DWORD
ScmCreateManagerHandle(LPWSTR lpDatabaseName,
                       SC_HANDLE *Handle)
{
    PMANAGER_HANDLE Ptr;

    if (lpDatabaseName == ((void*)0))
        lpDatabaseName = SERVICES_ACTIVE_DATABASEW;

    if (_wcsicmp(lpDatabaseName, SERVICES_FAILED_DATABASEW) == 0)
    {
        DPRINT("Database %S, does not exist\n", lpDatabaseName);
        return ERROR_DATABASE_DOES_NOT_EXIST;
    }
    else if (_wcsicmp(lpDatabaseName, SERVICES_ACTIVE_DATABASEW) != 0)
    {
        DPRINT("Invalid Database name %S.\n", lpDatabaseName);
        return ERROR_INVALID_NAME;
    }

    Ptr = HeapAlloc(GetProcessHeap(),
                    HEAP_ZERO_MEMORY,
                    FIELD_OFFSET(MANAGER_HANDLE, DatabaseName[wcslen(lpDatabaseName) + 1]));
    if (Ptr == ((void*)0))
        return ERROR_NOT_ENOUGH_MEMORY;

    Ptr->Handle.Tag = MANAGER_TAG;

    wcscpy(Ptr->DatabaseName, lpDatabaseName);

    *Handle = (SC_HANDLE)Ptr;

    return ERROR_SUCCESS;
}
