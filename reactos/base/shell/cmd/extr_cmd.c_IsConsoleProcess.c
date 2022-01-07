
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {scalar_t__ ImageSubsystem; } ;
struct TYPE_5__ {int PebBaseAddress; } ;
typedef TYPE_1__ PROCESS_BASIC_INFORMATION ;
typedef TYPE_2__ PEB ;
typedef int NTSTATUS ;
typedef int HANDLE ;
typedef int BOOL ;


 scalar_t__ IMAGE_SUBSYSTEM_WINDOWS_CUI ;
 int NT_SUCCESS (int ) ;
 int NtQueryInformationProcessPtr (int ,int ,TYPE_1__*,int,int *) ;
 int NtReadVirtualMemoryPtr (int ,int ,TYPE_2__*,int,int*) ;
 int ProcessBasicInformation ;
 int TRUE ;
 int WARN (char*,int ,...) ;

__attribute__((used)) static BOOL IsConsoleProcess(HANDLE Process)
{
    NTSTATUS Status;
    PROCESS_BASIC_INFORMATION Info;
    PEB ProcessPeb;
    ULONG BytesRead;

    if (((void*)0) == NtQueryInformationProcessPtr || ((void*)0) == NtReadVirtualMemoryPtr)
    {
        return TRUE;
    }

    Status = NtQueryInformationProcessPtr (
        Process, ProcessBasicInformation,
        &Info, sizeof(PROCESS_BASIC_INFORMATION), ((void*)0));
    if (! NT_SUCCESS(Status))
    {
        WARN ("NtQueryInformationProcess failed with status %08x\n", Status);
        return TRUE;
    }
    Status = NtReadVirtualMemoryPtr (
        Process, Info.PebBaseAddress, &ProcessPeb,
        sizeof(PEB), &BytesRead);
    if (! NT_SUCCESS(Status) || sizeof(PEB) != BytesRead)
    {
        WARN ("Couldn't read virt mem status %08x bytes read %lu\n", Status, BytesRead);
        return TRUE;
    }

    return IMAGE_SUBSYSTEM_WINDOWS_CUI == ProcessPeb.ImageSubsystem;
}
