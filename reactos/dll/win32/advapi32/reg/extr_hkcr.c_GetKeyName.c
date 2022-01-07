
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int Buffer; int MaximumLength; int Length; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef scalar_t__ ULONG ;
struct TYPE_8__ {int Name; int NameLength; } ;
typedef int PUNICODE_STRING ;
typedef TYPE_2__* PKEY_NAME_INFORMATION ;
typedef scalar_t__ NTSTATUS ;
typedef int LONG ;
typedef int HKEY ;


 int ERR (char*,scalar_t__) ;
 int ERROR_NOT_ENOUGH_MEMORY ;
 int ERROR_SUCCESS ;
 int KeyNameInformation ;
 int NT_SUCCESS (scalar_t__) ;
 scalar_t__ NtQueryKey (int ,int ,TYPE_2__*,scalar_t__,scalar_t__*) ;
 int RTL_DUPLICATE_UNICODE_STRING_NULL_TERMINATE ;
 TYPE_2__* RtlAllocateHeap (int ,int ,scalar_t__) ;
 scalar_t__ RtlDuplicateUnicodeString (int ,TYPE_1__*,int ) ;
 int RtlFreeHeap (int ,int ,TYPE_2__*) ;
 int RtlGetProcessHeap () ;
 int RtlNtStatusToDosError (scalar_t__) ;
 scalar_t__ STATUS_BUFFER_TOO_SMALL ;

__attribute__((used)) static
LONG
GetKeyName(HKEY hKey, PUNICODE_STRING KeyName)
{
    UNICODE_STRING InfoName;
    PKEY_NAME_INFORMATION NameInformation;
    ULONG InfoLength;
    NTSTATUS Status;


    InfoLength = 0;
    Status = NtQueryKey(hKey, KeyNameInformation, ((void*)0), 0, &InfoLength);
    if (Status != STATUS_BUFFER_TOO_SMALL)
    {
        ERR("NtQueryKey returned unexpected Status: 0x%08x\n", Status);
        return RtlNtStatusToDosError(Status);
    }


    NameInformation = RtlAllocateHeap(RtlGetProcessHeap(), 0, InfoLength);
    if (NameInformation == ((void*)0))
    {
        ERR("Failed to allocate %lu bytes", InfoLength);
        return ERROR_NOT_ENOUGH_MEMORY;
    }

    Status = NtQueryKey(hKey, KeyNameInformation, NameInformation, InfoLength, &InfoLength);
    if (!NT_SUCCESS(Status))
    {
        RtlFreeHeap(RtlGetProcessHeap(), 0, NameInformation);
        ERR("NtQueryKey failed: 0x%08x\n", Status);
        return RtlNtStatusToDosError(Status);
    }


    InfoName.Length = NameInformation->NameLength;
    InfoName.MaximumLength = NameInformation->NameLength;
    InfoName.Buffer = NameInformation->Name;

    Status = RtlDuplicateUnicodeString(RTL_DUPLICATE_UNICODE_STRING_NULL_TERMINATE, &InfoName, KeyName);
    if (!NT_SUCCESS(Status))
    {
        RtlFreeHeap(RtlGetProcessHeap(), 0, NameInformation);
        ERR("RtlDuplicateUnicodeString failed: 0x%08x\n", Status);
        return RtlNtStatusToDosError(Status);
    }

    RtlFreeHeap(RtlGetProcessHeap(), 0, NameInformation);

    return ERROR_SUCCESS;
}
