
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int NTSTATUS ;
typedef int HANDLE ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NtQueryInformationProcess (int ,int ,scalar_t__*,int,int *) ;
 int ProcessBreakOnTermination ;
 int TRUE ;

BOOL IsCriticalProcess(HANDLE hProcess)
{
    NTSTATUS status;
    ULONG BreakOnTermination;


    if (!hProcess)
        return FALSE;







    status = NtQueryInformationProcess(hProcess,
                                       ProcessBreakOnTermination,
                                       &BreakOnTermination,
                                       sizeof(ULONG),
                                       ((void*)0));

    if (NT_SUCCESS(status) && BreakOnTermination)
        return TRUE;

    return FALSE;
}
