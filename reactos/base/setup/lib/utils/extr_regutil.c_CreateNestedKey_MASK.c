#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int WCHAR ;
typedef  int USHORT ;
struct TYPE_12__ {int* Buffer; int Length; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_13__ {TYPE_1__* ObjectName; } ;
typedef  int* PWCHAR ;
typedef  TYPE_2__* POBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/ * PHANDLE ;
typedef  TYPE_2__ OBJECT_ATTRIBUTES ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  ACCESS_MASK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  KEY_CREATE_SUB_KEY ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  REG_OPTION_NON_VOLATILE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ STATUS_OBJECT_NAME_NOT_FOUND ; 
 scalar_t__ STATUS_SUCCESS ; 
 scalar_t__ STATUS_UNSUCCESSFUL ; 
 scalar_t__ TRUE ; 
 int FUNC8 (int*) ; 
 int* FUNC9 (int*,char) ; 

NTSTATUS
FUNC10(PHANDLE KeyHandle,
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

    Status = FUNC4(KeyHandle,
                         KEY_ALL_ACCESS,
                         ObjectAttributes,
                         0,
                         NULL,
                         CreateOptions,
                         &Disposition);
    FUNC0("NtCreateKey(%wZ) called (Status %lx)\n", ObjectAttributes->ObjectName, Status);
    if (Status != STATUS_OBJECT_NAME_NOT_FOUND)
    {
        if (!FUNC2(Status))
            FUNC1("CreateNestedKey: NtCreateKey(%wZ) failed (Status %lx)\n", ObjectAttributes->ObjectName, Status);

        return Status;
    }

    /* Copy object attributes */
    FUNC5(&LocalObjectAttributes,
                  ObjectAttributes,
                  sizeof(OBJECT_ATTRIBUTES));
    FUNC6(&LocalKeyName,
                           ObjectAttributes->ObjectName->Buffer);
    LocalObjectAttributes.ObjectName = &LocalKeyName;
    FullNameLength = LocalKeyName.Length;

    /* Remove the last part of the key name and try to create the key again. */
    while (Status == STATUS_OBJECT_NAME_NOT_FOUND)
    {
        Ptr = FUNC9(LocalKeyName.Buffer, '\\');
        if (Ptr == NULL || Ptr == LocalKeyName.Buffer)
        {
            Status = STATUS_UNSUCCESSFUL;
            break;
        }
        *Ptr = (WCHAR)0;
        LocalKeyName.Length = FUNC8(LocalKeyName.Buffer) * sizeof(WCHAR);

        Status = FUNC4(&LocalKeyHandle,
                             KEY_CREATE_SUB_KEY,
                             &LocalObjectAttributes,
                             0,
                             NULL,
                             REG_OPTION_NON_VOLATILE, // FIXME ?
                             &Disposition);
        FUNC0("NtCreateKey(%wZ) called (Status %lx)\n", &LocalKeyName, Status);
        if (!FUNC2(Status) && Status != STATUS_OBJECT_NAME_NOT_FOUND)
            FUNC1("CreateNestedKey: NtCreateKey(%wZ) failed (Status %lx)\n", LocalObjectAttributes.ObjectName, Status);
    }

    if (!FUNC2(Status))
    {
        FUNC7(&LocalKeyName);
        return Status;
    }

    /* Add removed parts of the key name and create them too. */
    while (TRUE)
    {
        if (LocalKeyName.Length == FullNameLength)
        {
            Status = STATUS_SUCCESS;
            *KeyHandle = LocalKeyHandle;
            break;
        }
        FUNC3(LocalKeyHandle);

        LocalKeyName.Buffer[LocalKeyName.Length / sizeof(WCHAR)] = L'\\';
        LocalKeyName.Length = FUNC8(LocalKeyName.Buffer) * sizeof(WCHAR);

        Status = FUNC4(&LocalKeyHandle,
                             KEY_ALL_ACCESS,
                             &LocalObjectAttributes,
                             0,
                             NULL,
                             CreateOptions,
                             &Disposition);
        FUNC0("NtCreateKey(%wZ) called (Status %lx)\n", &LocalKeyName, Status);
        if (!FUNC2(Status))
        {
            FUNC1("CreateNestedKey: NtCreateKey(%wZ) failed (Status %lx)\n", LocalObjectAttributes.ObjectName, Status);
            break;
        }
    }

    FUNC7(&LocalKeyName);

    return Status;
}