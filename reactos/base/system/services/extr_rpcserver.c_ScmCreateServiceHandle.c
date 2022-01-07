
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Tag; } ;
struct TYPE_5__ {int ServiceEntry; TYPE_1__ Handle; } ;
typedef int SERVICE_HANDLE ;
typedef scalar_t__ SC_HANDLE ;
typedef TYPE_2__* PSERVICE_HANDLE ;
typedef int PSERVICE ;
typedef int DWORD ;


 int ERROR_NOT_ENOUGH_MEMORY ;
 int ERROR_SUCCESS ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int SERVICE_TAG ;

__attribute__((used)) static DWORD
ScmCreateServiceHandle(PSERVICE lpServiceEntry,
                       SC_HANDLE *Handle)
{
    PSERVICE_HANDLE Ptr;

    Ptr = HeapAlloc(GetProcessHeap(),
                    HEAP_ZERO_MEMORY,
                    sizeof(SERVICE_HANDLE));
    if (Ptr == ((void*)0))
        return ERROR_NOT_ENOUGH_MEMORY;

    Ptr->Handle.Tag = SERVICE_TAG;

    Ptr->ServiceEntry = lpServiceEntry;

    *Handle = (SC_HANDLE)Ptr;

    return ERROR_SUCCESS;
}
