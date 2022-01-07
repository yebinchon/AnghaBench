
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef scalar_t__ SIZE_T ;
typedef int PVOID ;
typedef int PBYTE ;
typedef int NTSTATUS ;
typedef scalar_t__ BOOL ;


 scalar_t__ NT_SUCCESS (int ) ;
 int NtCurrentProcess () ;
 int NtProtectVirtualMemory (int ,int *,scalar_t__*,int ,int *) ;
 int NtWriteVirtualMemory (int ,int ,int ,scalar_t__,scalar_t__*) ;
 int PAGE_EXECUTE_READWRITE ;
 int STATUS_MEMORY_NOT_ALLOCATED ;

__attribute__((used)) static BOOL Write(PBYTE Address, PBYTE Data, SIZE_T Size)
{
    PVOID BaseAddress = Address;
    SIZE_T RegionSize = Size;
    ULONG OldProtection;
    NTSTATUS Status = NtProtectVirtualMemory(NtCurrentProcess(), &BaseAddress, &RegionSize, PAGE_EXECUTE_READWRITE, &OldProtection);
    if (NT_SUCCESS(Status))
    {
        SIZE_T Bytes;
        Status = NtWriteVirtualMemory(NtCurrentProcess(), Address, Data, Size, &Bytes);
        if (NT_SUCCESS(Status) && Bytes != Size)
            Status = STATUS_MEMORY_NOT_ALLOCATED;
        NtProtectVirtualMemory(NtCurrentProcess(), &BaseAddress, &RegionSize, OldProtection, &OldProtection);
    }
    return NT_SUCCESS(Status);
}
