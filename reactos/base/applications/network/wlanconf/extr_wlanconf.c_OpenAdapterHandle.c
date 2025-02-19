
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_11__ {int Name; } ;
struct TYPE_10__ {scalar_t__ DeviceNameLength; size_t NumAdapters; TYPE_3__* Adapter; struct TYPE_10__* DeviceNameOffset; scalar_t__ BindingIndex; } ;
typedef int PWCHAR ;
typedef int PUCHAR ;
typedef TYPE_1__* PNDISUIO_QUERY_BINDING ;
typedef TYPE_1__* PIP_INTERFACE_INFO ;
typedef int NDISUIO_QUERY_BINDING ;
typedef size_t LONG ;
typedef int IP_INTERFACE_INFO ;
typedef TYPE_3__ IP_ADAPTER_INDEX_MAP ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ DeviceIoControl (scalar_t__,int ,TYPE_1__*,scalar_t__,TYPE_1__*,scalar_t__,scalar_t__*,int *) ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ FALSE ;
 scalar_t__ GetInterfaceInfo (TYPE_1__*,scalar_t__*) ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int IOCTL_NDISUIO_OPEN_DEVICE ;
 int IOCTL_NDISUIO_QUERY_BINDING ;
 scalar_t__ NO_ERROR ;
 scalar_t__ OpenDriverHandle () ;
 scalar_t__ TRUE ;
 scalar_t__ wcsstr (int ,int ) ;

BOOL
OpenAdapterHandle(DWORD Index, HANDLE *hAdapter, IP_ADAPTER_INDEX_MAP *IpInfo)
{
    HANDLE hDriver;
    BOOL bSuccess;
    DWORD dwBytesReturned;
    DWORD QueryBindingSize = sizeof(NDISUIO_QUERY_BINDING) + (1024 * sizeof(WCHAR));
    PNDISUIO_QUERY_BINDING QueryBinding;
    DWORD dwStatus, dwSize;
    LONG i;
    PIP_INTERFACE_INFO InterfaceInfo = ((void*)0);


    hDriver = OpenDriverHandle();
    if (hDriver == INVALID_HANDLE_VALUE)
        return FALSE;


    QueryBinding = HeapAlloc(GetProcessHeap(), 0, QueryBindingSize);
    if (!QueryBinding)
    {
        CloseHandle(hDriver);
        return FALSE;
    }


    QueryBinding->BindingIndex = Index;
    bSuccess = DeviceIoControl(hDriver,
                               IOCTL_NDISUIO_QUERY_BINDING,
                               QueryBinding,
                               QueryBindingSize,
                               QueryBinding,
                               QueryBindingSize,
                               &dwBytesReturned,
                               ((void*)0));

    if (!bSuccess)
    {
        HeapFree(GetProcessHeap(), 0, QueryBinding);
        CloseHandle(hDriver);
        return FALSE;
    }


    bSuccess = DeviceIoControl(hDriver,
                               IOCTL_NDISUIO_OPEN_DEVICE,
                               (PUCHAR)QueryBinding + QueryBinding->DeviceNameOffset,
                               QueryBinding->DeviceNameLength,
                               ((void*)0),
                               0,
                               &dwBytesReturned,
                               ((void*)0));

    if (!bSuccess)
    {
        HeapFree(GetProcessHeap(), 0, QueryBinding);
        CloseHandle(hDriver);
        return FALSE;
    }


    dwSize = sizeof(IP_INTERFACE_INFO);
    do {
        if (InterfaceInfo) HeapFree(GetProcessHeap(), 0, InterfaceInfo);
        InterfaceInfo = HeapAlloc(GetProcessHeap(), 0, dwSize);
        if (!InterfaceInfo)
        {
            HeapFree(GetProcessHeap(), 0, QueryBinding);
            CloseHandle(hDriver);
            return FALSE;
        }
        dwStatus = GetInterfaceInfo(InterfaceInfo, &dwSize);
    } while (dwStatus == ERROR_INSUFFICIENT_BUFFER);

    if (dwStatus != NO_ERROR)
    {
        HeapFree(GetProcessHeap(), 0, QueryBinding);
        HeapFree(GetProcessHeap(), 0, InterfaceInfo);
        CloseHandle(hDriver);
        return FALSE;
    }

    for (i = 0; i < InterfaceInfo->NumAdapters; i++)
    {
        if (wcsstr((PWCHAR)((PUCHAR)QueryBinding + QueryBinding->DeviceNameOffset),
                   InterfaceInfo->Adapter[i].Name))
        {
            *IpInfo = InterfaceInfo->Adapter[i];
            *hAdapter = hDriver;

            HeapFree(GetProcessHeap(), 0, QueryBinding);
            HeapFree(GetProcessHeap(), 0, InterfaceInfo);

            return TRUE;
        }
    }

    HeapFree(GetProcessHeap(), 0, QueryBinding);
    HeapFree(GetProcessHeap(), 0, InterfaceInfo);
    CloseHandle(hDriver);

    return FALSE;
}
