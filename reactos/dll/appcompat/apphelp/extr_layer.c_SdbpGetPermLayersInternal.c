
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WCHAR ;
typedef int ValueBuffer ;
struct TYPE_7__ {int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int ULONG ;
struct TYPE_8__ {int DataLength; scalar_t__ Data; } ;
typedef int PWSTR ;
typedef TYPE_2__* PVOID ;
typedef int PUNICODE_STRING ;
typedef TYPE_2__* PKEY_VALUE_PARTIAL_INFORMATION ;
typedef int * PDWORD ;
typedef int PCWSTR ;
typedef int NTSTATUS ;
typedef int KEY_VALUE_PARTIAL_INFORMATION ;
typedef int HANDLE ;
typedef scalar_t__ BOOL ;


 int KEY_QUERY_VALUE ;
 int KeyValuePartialInformation ;
 int MAX_LAYER_LENGTH ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NtClose (int ) ;
 int NtQueryValueKey (int ,int ,int ,TYPE_2__*,int,int *) ;
 int SHIM_INFO (char*,TYPE_1__*,int ) ;
 int SdbFree (int ) ;
 int SdbpOpenKey (TYPE_1__*,scalar_t__,int ,int *) ;
 int StringCbCopyNW (int ,int ,int ,int ) ;

BOOL SdbpGetPermLayersInternal(PUNICODE_STRING FullPath, PWSTR pwszLayers, PDWORD pdwBytes, BOOL bMachine)
{
    UNICODE_STRING FullKey;
    ULONG ValueBuffer[(MAX_LAYER_LENGTH * sizeof(WCHAR) + sizeof(KEY_VALUE_PARTIAL_INFORMATION) + sizeof(ULONG) - 1) / sizeof(ULONG)];
    PKEY_VALUE_PARTIAL_INFORMATION PartialInfo = (PVOID)ValueBuffer;
    ULONG Length = 0;
    HANDLE KeyHandle;
    NTSTATUS Status;

    Status = SdbpOpenKey(&FullKey, bMachine, KEY_QUERY_VALUE, &KeyHandle);
    if (NT_SUCCESS(Status))
    {
        Status = NtQueryValueKey(KeyHandle, FullPath, KeyValuePartialInformation, PartialInfo, sizeof(ValueBuffer), &Length);
        if (NT_SUCCESS(Status))
        {
            StringCbCopyNW(pwszLayers, *pdwBytes, (PCWSTR)PartialInfo->Data, PartialInfo->DataLength);
            *pdwBytes = PartialInfo->DataLength;
        }
        else
        {
            SHIM_INFO("Failed to read value info from Key \"%wZ\" Status 0x%lx\n", &FullKey, Status);
        }
        NtClose(KeyHandle);
        SdbFree(FullKey.Buffer);
    }
    return NT_SUCCESS(Status);
}
