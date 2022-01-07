
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPDCB ;
typedef int LPCOMMTIMEOUTS ;
typedef char* INT ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int ASSERT (int ) ;
 int CloseHandle (scalar_t__) ;
 int ConResPrintf (int ,int ,int *,...) ;
 scalar_t__ CreateFileW (int *,int ,int ,int *,int ,int ,int *) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ FALSE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ GetCommState (scalar_t__,int ) ;
 scalar_t__ GetCommTimeouts (scalar_t__,int ) ;
 scalar_t__ GetLastError () ;
 int IDS_ERROR_DEVICE_NOT_AVAILABLE ;
 int IDS_ERROR_ILLEGAL_DEVICE_NAME ;
 int IDS_ERROR_STATUS_GET_DEVICE ;
 int IDS_ERROR_STATUS_SET_DEVICE ;
 int IDS_ERROR_TIMEOUT_GET_DEVICE ;
 int IDS_ERROR_TIMEOUT_SET_DEVICE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PORTNAME_LEN ;
 int OPEN_EXISTING ;
 scalar_t__ SetCommState (scalar_t__,int ) ;
 scalar_t__ SetCommTimeouts (scalar_t__,int ) ;
 int StdErr ;
 int swprintf (int *,char*,char*) ;

__attribute__((used)) static BOOL
SerialPortQuery(INT nPortNum, LPDCB pDCB, LPCOMMTIMEOUTS pCommTimeouts, BOOL bWrite)
{
    BOOL Success;
    HANDLE hPort;
    WCHAR szPortName[MAX_PORTNAME_LEN];

    ASSERT(pDCB);
    ASSERT(pCommTimeouts);

    swprintf(szPortName, L"COM%d", nPortNum);
    hPort = CreateFileW(szPortName,
                        bWrite ? GENERIC_WRITE : GENERIC_READ,
                        0,
                        ((void*)0),
                        OPEN_EXISTING,
                        0,
                        ((void*)0));

    if (hPort == INVALID_HANDLE_VALUE)
    {
        DWORD dwLastError = GetLastError();
        if (dwLastError == ERROR_ACCESS_DENIED)
            ConResPrintf(StdErr, IDS_ERROR_DEVICE_NOT_AVAILABLE, szPortName);
        else
            ConResPrintf(StdErr, IDS_ERROR_ILLEGAL_DEVICE_NAME, szPortName, dwLastError);
        return FALSE;
    }

    Success = bWrite ? SetCommState(hPort, pDCB)
                     : GetCommState(hPort, pDCB);
    if (!Success)
    {
        ConResPrintf(StdErr,
                     bWrite ? IDS_ERROR_STATUS_SET_DEVICE : IDS_ERROR_STATUS_GET_DEVICE,
                     szPortName);
        goto Quit;
    }

    Success = bWrite ? SetCommTimeouts(hPort, pCommTimeouts)
                     : GetCommTimeouts(hPort, pCommTimeouts);
    if (!Success)
    {
        ConResPrintf(StdErr,
                     bWrite ? IDS_ERROR_TIMEOUT_SET_DEVICE : IDS_ERROR_TIMEOUT_GET_DEVICE,
                     szPortName);
        goto Quit;
    }

Quit:
    CloseHandle(hPort);
    return Success;
}
