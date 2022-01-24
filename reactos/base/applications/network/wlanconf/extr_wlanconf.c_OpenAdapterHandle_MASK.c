#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_11__ {int /*<<< orphan*/  Name; } ;
struct TYPE_10__ {scalar_t__ DeviceNameLength; size_t NumAdapters; TYPE_3__* Adapter; struct TYPE_10__* DeviceNameOffset; scalar_t__ BindingIndex; } ;
typedef  int /*<<< orphan*/  PWCHAR ;
typedef  int PUCHAR ;
typedef  TYPE_1__* PNDISUIO_QUERY_BINDING ;
typedef  TYPE_1__* PIP_INTERFACE_INFO ;
typedef  int /*<<< orphan*/  NDISUIO_QUERY_BINDING ;
typedef  size_t LONG ;
typedef  int /*<<< orphan*/  IP_INTERFACE_INFO ;
typedef  TYPE_3__ IP_ADAPTER_INDEX_MAP ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*,scalar_t__,TYPE_1__*,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC2 (TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  IOCTL_NDISUIO_OPEN_DEVICE ; 
 int /*<<< orphan*/  IOCTL_NDISUIO_QUERY_BINDING ; 
 scalar_t__ NO_ERROR ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOL
FUNC8(DWORD Index, HANDLE *hAdapter, IP_ADAPTER_INDEX_MAP *IpInfo)
{
    HANDLE hDriver;
    BOOL bSuccess;
    DWORD dwBytesReturned;
    DWORD QueryBindingSize = sizeof(NDISUIO_QUERY_BINDING) + (1024 * sizeof(WCHAR));
    PNDISUIO_QUERY_BINDING QueryBinding;
    DWORD dwStatus, dwSize;
    LONG i;
    PIP_INTERFACE_INFO InterfaceInfo = NULL;

    /* Open the driver handle */
    hDriver = FUNC6();
    if (hDriver == INVALID_HANDLE_VALUE)
        return FALSE;

    /* Allocate the binding struct */
    QueryBinding = FUNC4(FUNC3(), 0, QueryBindingSize);
    if (!QueryBinding)
    {
        FUNC0(hDriver);
        return FALSE;
    }

    /* Query the adapter binding information */
    QueryBinding->BindingIndex = Index;
    bSuccess = FUNC1(hDriver,
                               IOCTL_NDISUIO_QUERY_BINDING,
                               QueryBinding,
                               QueryBindingSize,
                               QueryBinding,
                               QueryBindingSize,
                               &dwBytesReturned,
                               NULL);

    if (!bSuccess)
    {
        FUNC5(FUNC3(), 0, QueryBinding);
        FUNC0(hDriver);
        return FALSE;
    }

    /* Bind to the adapter */
    bSuccess = FUNC1(hDriver,
                               IOCTL_NDISUIO_OPEN_DEVICE,
                               (PUCHAR)QueryBinding + QueryBinding->DeviceNameOffset,
                               QueryBinding->DeviceNameLength,
                               NULL,
                               0,
                               &dwBytesReturned,
                               NULL);

    if (!bSuccess)
    {
        FUNC5(FUNC3(), 0, QueryBinding);
        FUNC0(hDriver);
        return FALSE;
    }

    /* Get interface info from the IP helper */
    dwSize = sizeof(IP_INTERFACE_INFO);
    do {
        if (InterfaceInfo) FUNC5(FUNC3(), 0, InterfaceInfo);
        InterfaceInfo = FUNC4(FUNC3(), 0, dwSize);
        if (!InterfaceInfo)
        {
            FUNC5(FUNC3(), 0, QueryBinding);
            FUNC0(hDriver);
            return FALSE;
        }
        dwStatus = FUNC2(InterfaceInfo, &dwSize);
    } while (dwStatus == ERROR_INSUFFICIENT_BUFFER);

    if (dwStatus != NO_ERROR)
    {
        FUNC5(FUNC3(), 0, QueryBinding);
        FUNC5(FUNC3(), 0, InterfaceInfo);
        FUNC0(hDriver);
        return FALSE;
    }

    for (i = 0; i < InterfaceInfo->NumAdapters; i++)
    {
        if (FUNC7((PWCHAR)((PUCHAR)QueryBinding + QueryBinding->DeviceNameOffset),
                   InterfaceInfo->Adapter[i].Name))
        {
            *IpInfo = InterfaceInfo->Adapter[i];
            *hAdapter = hDriver;

            FUNC5(FUNC3(), 0, QueryBinding);
            FUNC5(FUNC3(), 0, InterfaceInfo);

            return TRUE;
        }
    }

    FUNC5(FUNC3(), 0, QueryBinding);
    FUNC5(FUNC3(), 0, InterfaceInfo);
    FUNC0(hDriver);

    return FALSE;
}