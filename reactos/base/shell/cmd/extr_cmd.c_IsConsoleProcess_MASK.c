#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_6__ {scalar_t__ ImageSubsystem; } ;
struct TYPE_5__ {int /*<<< orphan*/  PebBaseAddress; } ;
typedef  TYPE_1__ PROCESS_BASIC_INFORMATION ;
typedef  TYPE_2__ PEB ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ IMAGE_SUBSYSTEM_WINDOWS_CUI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int,int*) ; 
 int /*<<< orphan*/  ProcessBasicInformation ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static BOOL FUNC4(HANDLE Process)
{
    NTSTATUS Status;
    PROCESS_BASIC_INFORMATION Info;
    PEB ProcessPeb;
    ULONG BytesRead;

    if (NULL == &NtQueryInformationProcessPtr || NULL == &NtReadVirtualMemoryPtr)
    {
        return TRUE;
    }

    Status = FUNC1 (
        Process, ProcessBasicInformation,
        &Info, sizeof(PROCESS_BASIC_INFORMATION), NULL);
    if (! FUNC0(Status))
    {
        FUNC3 ("NtQueryInformationProcess failed with status %08x\n", Status);
        return TRUE;
    }
    Status = FUNC2 (
        Process, Info.PebBaseAddress, &ProcessPeb,
        sizeof(PEB), &BytesRead);
    if (! FUNC0(Status) || sizeof(PEB) != BytesRead)
    {
        FUNC3 ("Couldn't read virt mem status %08x bytes read %lu\n", Status, BytesRead);
        return TRUE;
    }

    return IMAGE_SUBSYSTEM_WINDOWS_CUI == ProcessPeb.ImageSubsystem;
}