
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwSize; scalar_t__ th32ParentProcessID; scalar_t__ th32ProcessID; int member_0; } ;
typedef int ProcessEntry ;
typedef TYPE_1__ PROCESSENTRY32W ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 int FALSE ;
 scalar_t__ IsCriticalProcess (scalar_t__) ;
 scalar_t__ OpenProcess (int,int ,scalar_t__) ;
 int PROCESS_QUERY_INFORMATION ;
 int PROCESS_TERMINATE ;
 scalar_t__ Process32FirstW (scalar_t__,TYPE_1__*) ;
 scalar_t__ Process32NextW (scalar_t__,TYPE_1__*) ;
 int TerminateProcess (scalar_t__,int ) ;

BOOL ShutdownProcessTreeHelper(HANDLE hSnapshot, HANDLE hParentProcess, DWORD dwParentPID)
{
    HANDLE hChildHandle;
    PROCESSENTRY32W ProcessEntry = {0};
    ProcessEntry.dwSize = sizeof(ProcessEntry);

    if (Process32FirstW(hSnapshot, &ProcessEntry))
    {
        do
        {
            if (ProcessEntry.th32ParentProcessID == dwParentPID)
            {
                hChildHandle = OpenProcess(PROCESS_TERMINATE | PROCESS_QUERY_INFORMATION,
                                           FALSE,
                                           ProcessEntry.th32ProcessID);
                if (!hChildHandle || IsCriticalProcess(hChildHandle))
                {
                    if (hChildHandle)
                    {
                        CloseHandle(hChildHandle);
                    }
                    continue;
                }
                if (!ShutdownProcessTreeHelper(hSnapshot, hChildHandle, ProcessEntry.th32ProcessID))
                {
                    CloseHandle(hChildHandle);
                    return FALSE;
                }
                CloseHandle(hChildHandle);
            }
        } while (Process32NextW(hSnapshot, &ProcessEntry));
    }

    return TerminateProcess(hParentProcess, 0);
}
