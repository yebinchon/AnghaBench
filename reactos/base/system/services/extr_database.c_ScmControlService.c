
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_13__ {scalar_t__ hEvent; int member_0; } ;
struct TYPE_12__ {int dwServiceNameOffset; scalar_t__ dwArgumentsOffset; scalar_t__ dwArgumentsCount; int hServiceStatus; scalar_t__ dwControl; scalar_t__ dwSize; } ;
struct TYPE_11__ {scalar_t__ dwError; } ;
typedef int SERVICE_STATUS_HANDLE ;
typedef TYPE_1__ SCM_REPLY_PACKET ;
typedef int SCM_CONTROL_PACKET ;
typedef scalar_t__ PWSTR ;
typedef TYPE_2__* PSCM_CONTROL_PACKET ;
typedef scalar_t__ PBYTE ;
typedef TYPE_3__ OVERLAPPED ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ CancelIo (scalar_t__) ;
 int ControlServiceCriticalSection ;
 int DPRINT (char*,...) ;
 int DPRINT1 (char*,scalar_t__) ;
 scalar_t__ ERROR_IO_PENDING ;
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ;
 scalar_t__ ERROR_SERVICE_REQUEST_TIMEOUT ;
 scalar_t__ ERROR_SUCCESS ;
 int EnterCriticalSection (int *) ;
 scalar_t__ FALSE ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetOverlappedResult (scalar_t__,TYPE_3__*,scalar_t__*,int ) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int LeaveCriticalSection (int *) ;
 int PipeTimeout ;
 scalar_t__ ReadFile (scalar_t__,TYPE_1__*,int,scalar_t__*,TYPE_3__*) ;
 int TRUE ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WAIT_TIMEOUT ;
 scalar_t__ WaitForSingleObject (scalar_t__,int ) ;
 scalar_t__ WriteFile (scalar_t__,TYPE_2__*,scalar_t__,scalar_t__*,TYPE_3__*) ;
 int wcscpy (scalar_t__,scalar_t__) ;
 int wcslen (scalar_t__) ;

DWORD
ScmControlService(HANDLE hControlPipe,
                  PWSTR pServiceName,
                  SERVICE_STATUS_HANDLE hServiceStatus,
                  DWORD dwControl)
{
    PSCM_CONTROL_PACKET ControlPacket;
    SCM_REPLY_PACKET ReplyPacket;

    DWORD dwWriteCount = 0;
    DWORD dwReadCount = 0;
    DWORD PacketSize;
    PWSTR Ptr;
    DWORD dwError = ERROR_SUCCESS;
    BOOL bResult;
    OVERLAPPED Overlapped = {0};

    DPRINT("ScmControlService() called\n");


    EnterCriticalSection(&ControlServiceCriticalSection);


    PacketSize = sizeof(SCM_CONTROL_PACKET);
    PacketSize += (DWORD)((wcslen(pServiceName) + 1) * sizeof(WCHAR));

    ControlPacket = HeapAlloc(GetProcessHeap(),
                              HEAP_ZERO_MEMORY,
                              PacketSize);
    if (ControlPacket == ((void*)0))
    {
        LeaveCriticalSection(&ControlServiceCriticalSection);
        return ERROR_NOT_ENOUGH_MEMORY;
    }

    ControlPacket->dwSize = PacketSize;
    ControlPacket->dwControl = dwControl;
    ControlPacket->hServiceStatus = hServiceStatus;

    ControlPacket->dwServiceNameOffset = sizeof(SCM_CONTROL_PACKET);

    Ptr = (PWSTR)((PBYTE)ControlPacket + ControlPacket->dwServiceNameOffset);
    wcscpy(Ptr, pServiceName);

    ControlPacket->dwArgumentsCount = 0;
    ControlPacket->dwArgumentsOffset = 0;

    bResult = WriteFile(hControlPipe,
                        ControlPacket,
                        PacketSize,
                        &dwWriteCount,
                        &Overlapped);
    if (bResult == FALSE)
    {
        DPRINT("WriteFile() returned FALSE\n");

        dwError = GetLastError();
        if (dwError == ERROR_IO_PENDING)
        {
            DPRINT("dwError: ERROR_IO_PENDING\n");

            dwError = WaitForSingleObject(hControlPipe,
                                          PipeTimeout);
            DPRINT("WaitForSingleObject() returned %lu\n", dwError);

            if (dwError == WAIT_TIMEOUT)
            {
                bResult = CancelIo(hControlPipe);
                if (bResult == FALSE)
                {
                    DPRINT1("CancelIo() failed (Error: %lu)\n", GetLastError());
                }

                dwError = ERROR_SERVICE_REQUEST_TIMEOUT;
                goto Done;
            }
            else if (dwError == WAIT_OBJECT_0)
            {
                bResult = GetOverlappedResult(hControlPipe,
                                              &Overlapped,
                                              &dwWriteCount,
                                              TRUE);
                if (bResult == FALSE)
                {
                    dwError = GetLastError();
                    DPRINT1("GetOverlappedResult() failed (Error %lu)\n", dwError);

                    goto Done;
                }
            }
        }
        else
        {
            DPRINT1("WriteFile() failed (Error %lu)\n", dwError);
            goto Done;
        }
    }


    Overlapped.hEvent = (HANDLE) ((void*)0);

    bResult = ReadFile(hControlPipe,
                       &ReplyPacket,
                       sizeof(SCM_REPLY_PACKET),
                       &dwReadCount,
                       &Overlapped);
    if (bResult == FALSE)
    {
        DPRINT("ReadFile() returned FALSE\n");

        dwError = GetLastError();
        if (dwError == ERROR_IO_PENDING)
        {
            DPRINT("dwError: ERROR_IO_PENDING\n");

            dwError = WaitForSingleObject(hControlPipe,
                                          PipeTimeout);
            DPRINT("WaitForSingleObject() returned %lu\n", dwError);

            if (dwError == WAIT_TIMEOUT)
            {
                bResult = CancelIo(hControlPipe);
                if (bResult == FALSE)
                {
                    DPRINT1("CancelIo() failed (Error: %lu)\n", GetLastError());
                }

                dwError = ERROR_SERVICE_REQUEST_TIMEOUT;
                goto Done;
            }
            else if (dwError == WAIT_OBJECT_0)
            {
                bResult = GetOverlappedResult(hControlPipe,
                                              &Overlapped,
                                              &dwReadCount,
                                              TRUE);
                if (bResult == FALSE)
                {
                    dwError = GetLastError();
                    DPRINT1("GetOverlappedResult() failed (Error %lu)\n", dwError);

                    goto Done;
                }
            }
        }
        else
        {
            DPRINT1("ReadFile() failed (Error %lu)\n", dwError);
            goto Done;
        }
    }

Done:

    HeapFree(GetProcessHeap(),
             0,
             ControlPacket);

    if (dwReadCount == sizeof(SCM_REPLY_PACKET))
    {
        dwError = ReplyPacket.dwError;
    }

    LeaveCriticalSection(&ControlServiceCriticalSection);

    DPRINT("ScmControlService() done\n");

    return dwError;
}
