
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UNICODE_STRING ;
typedef int ULONG ;
typedef int SIZE_T ;
typedef int PVOID ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef scalar_t__ LPCWSTR ;
typedef int * HANDLE ;
typedef int BOOL ;


 int BaseSetLastNTError (int ) ;
 int FALSE ;
 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int KEY_WRITE ;
 int MAXULONG ;
 int NT_SUCCESS (int ) ;
 int NtClose (int *) ;
 int NtCreateKey (int **,int ,int *,int ,int *,int ,int *) ;
 int NtFlushKey (int *) ;
 int NtOpenKey (int **,int ,int *) ;
 int NtSetValueKey (int *,int *,int ,int ,int ,int) ;
 int OBJ_CASE_INSENSITIVE ;
 int REG_OPTION_VOLATILE ;
 int REG_SZ ;
 int RtlInitUnicodeString (int *,scalar_t__) ;
 int TRUE ;
 int wcslen (scalar_t__) ;

__attribute__((used)) static
BOOL
SetActiveComputerNameToRegistry(LPCWSTR RegistryKey,
                                LPCWSTR SubKey,
                                LPCWSTR ValueNameStr,
                                LPCWSTR lpBuffer)
{
    OBJECT_ATTRIBUTES ObjectAttributes;
    UNICODE_STRING KeyName;
    UNICODE_STRING ValueName;
    HANDLE KeyHandle, SubKeyHandle;
    SIZE_T StringLength;
    ULONG Disposition;
    NTSTATUS Status;

    StringLength = wcslen(lpBuffer);
    if (StringLength > ((MAXULONG / sizeof(WCHAR)) - 1))
    {
        return FALSE;
    }

    RtlInitUnicodeString(&KeyName, RegistryKey);
    InitializeObjectAttributes(&ObjectAttributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               ((void*)0),
                               ((void*)0));

    Status = NtOpenKey(&KeyHandle,
                       KEY_WRITE,
                       &ObjectAttributes);
    if (!NT_SUCCESS(Status))
    {
        BaseSetLastNTError(Status);
        return FALSE;
    }

    RtlInitUnicodeString(&KeyName, SubKey);
    InitializeObjectAttributes(&ObjectAttributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               KeyHandle,
                               ((void*)0));

    Status = NtCreateKey(&SubKeyHandle,
                         KEY_WRITE,
                         &ObjectAttributes,
                         0,
                         ((void*)0),
                         REG_OPTION_VOLATILE,
                         &Disposition);
    if (!NT_SUCCESS(Status))
    {
        NtClose(KeyHandle);
        BaseSetLastNTError(Status);
        return FALSE;
    }

    RtlInitUnicodeString(&ValueName, ValueNameStr);

    Status = NtSetValueKey(SubKeyHandle,
                           &ValueName,
                           0,
                           REG_SZ,
                           (PVOID)lpBuffer,
                           (StringLength + 1) * sizeof(WCHAR));
    if (!NT_SUCCESS(Status))
    {
        NtClose(SubKeyHandle);
        NtClose(KeyHandle);
        BaseSetLastNTError(Status);
        return FALSE;
    }

    NtFlushKey(SubKeyHandle);
    NtClose(SubKeyHandle);
    NtClose(KeyHandle);

    return TRUE;
}
