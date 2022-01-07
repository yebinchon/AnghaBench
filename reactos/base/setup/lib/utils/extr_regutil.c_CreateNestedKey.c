
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int WCHAR ;
typedef int USHORT ;
struct TYPE_12__ {int* Buffer; int Length; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int ULONG ;
struct TYPE_13__ {TYPE_1__* ObjectName; } ;
typedef int* PWCHAR ;
typedef TYPE_2__* POBJECT_ATTRIBUTES ;
typedef int * PHANDLE ;
typedef TYPE_2__ OBJECT_ATTRIBUTES ;
typedef scalar_t__ NTSTATUS ;
typedef int HANDLE ;
typedef int ACCESS_MASK ;


 int DPRINT (char*,TYPE_1__*,scalar_t__) ;
 int DPRINT1 (char*,TYPE_1__*,scalar_t__) ;
 int KEY_ALL_ACCESS ;
 int KEY_CREATE_SUB_KEY ;
 int NT_SUCCESS (scalar_t__) ;
 int NtClose (int ) ;
 scalar_t__ NtCreateKey (int *,int ,TYPE_2__*,int ,int *,int ,int *) ;
 int REG_OPTION_NON_VOLATILE ;
 int RtlCopyMemory (TYPE_2__*,TYPE_2__*,int) ;
 int RtlCreateUnicodeString (TYPE_1__*,int*) ;
 int RtlFreeUnicodeString (TYPE_1__*) ;
 scalar_t__ STATUS_OBJECT_NAME_NOT_FOUND ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ STATUS_UNSUCCESSFUL ;
 scalar_t__ TRUE ;
 int wcslen (int*) ;
 int* wcsrchr (int*,char) ;

NTSTATUS
CreateNestedKey(PHANDLE KeyHandle,
                ACCESS_MASK DesiredAccess,
                POBJECT_ATTRIBUTES ObjectAttributes,
                ULONG CreateOptions)
{
    OBJECT_ATTRIBUTES LocalObjectAttributes;
    UNICODE_STRING LocalKeyName;
    ULONG Disposition;
    NTSTATUS Status;
    USHORT FullNameLength;
    PWCHAR Ptr;
    HANDLE LocalKeyHandle;

    Status = NtCreateKey(KeyHandle,
                         KEY_ALL_ACCESS,
                         ObjectAttributes,
                         0,
                         ((void*)0),
                         CreateOptions,
                         &Disposition);
    DPRINT("NtCreateKey(%wZ) called (Status %lx)\n", ObjectAttributes->ObjectName, Status);
    if (Status != STATUS_OBJECT_NAME_NOT_FOUND)
    {
        if (!NT_SUCCESS(Status))
            DPRINT1("CreateNestedKey: NtCreateKey(%wZ) failed (Status %lx)\n", ObjectAttributes->ObjectName, Status);

        return Status;
    }


    RtlCopyMemory(&LocalObjectAttributes,
                  ObjectAttributes,
                  sizeof(OBJECT_ATTRIBUTES));
    RtlCreateUnicodeString(&LocalKeyName,
                           ObjectAttributes->ObjectName->Buffer);
    LocalObjectAttributes.ObjectName = &LocalKeyName;
    FullNameLength = LocalKeyName.Length;


    while (Status == STATUS_OBJECT_NAME_NOT_FOUND)
    {
        Ptr = wcsrchr(LocalKeyName.Buffer, '\\');
        if (Ptr == ((void*)0) || Ptr == LocalKeyName.Buffer)
        {
            Status = STATUS_UNSUCCESSFUL;
            break;
        }
        *Ptr = (WCHAR)0;
        LocalKeyName.Length = wcslen(LocalKeyName.Buffer) * sizeof(WCHAR);

        Status = NtCreateKey(&LocalKeyHandle,
                             KEY_CREATE_SUB_KEY,
                             &LocalObjectAttributes,
                             0,
                             ((void*)0),
                             REG_OPTION_NON_VOLATILE,
                             &Disposition);
        DPRINT("NtCreateKey(%wZ) called (Status %lx)\n", &LocalKeyName, Status);
        if (!NT_SUCCESS(Status) && Status != STATUS_OBJECT_NAME_NOT_FOUND)
            DPRINT1("CreateNestedKey: NtCreateKey(%wZ) failed (Status %lx)\n", LocalObjectAttributes.ObjectName, Status);
    }

    if (!NT_SUCCESS(Status))
    {
        RtlFreeUnicodeString(&LocalKeyName);
        return Status;
    }


    while (TRUE)
    {
        if (LocalKeyName.Length == FullNameLength)
        {
            Status = STATUS_SUCCESS;
            *KeyHandle = LocalKeyHandle;
            break;
        }
        NtClose(LocalKeyHandle);

        LocalKeyName.Buffer[LocalKeyName.Length / sizeof(WCHAR)] = L'\\';
        LocalKeyName.Length = wcslen(LocalKeyName.Buffer) * sizeof(WCHAR);

        Status = NtCreateKey(&LocalKeyHandle,
                             KEY_ALL_ACCESS,
                             &LocalObjectAttributes,
                             0,
                             ((void*)0),
                             CreateOptions,
                             &Disposition);
        DPRINT("NtCreateKey(%wZ) called (Status %lx)\n", &LocalKeyName, Status);
        if (!NT_SUCCESS(Status))
        {
            DPRINT1("CreateNestedKey: NtCreateKey(%wZ) failed (Status %lx)\n", LocalObjectAttributes.ObjectName, Status);
            break;
        }
    }

    RtlFreeUnicodeString(&LocalKeyName);

    return Status;
}
