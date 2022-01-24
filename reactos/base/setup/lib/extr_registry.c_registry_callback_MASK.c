#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ WCHAR ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int UINT ;
typedef  int /*<<< orphan*/ * PUNICODE_STRING ;
typedef  int /*<<< orphan*/  PINT ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  INFCONTEXT ;
typedef  int /*<<< orphan*/  HINF ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int FLG_ADDREG_OVERWRITEONLY ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int MAX_INF_STRING_LENGTH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OBJ_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  REG_OPTION_NON_VOLATILE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int,scalar_t__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static BOOLEAN
FUNC14(HINF hInf, PCWSTR Section, BOOLEAN Delete)
{
    NTSTATUS Status;
    OBJECT_ATTRIBUTES ObjectAttributes;
    UNICODE_STRING Name, Value;
    PUNICODE_STRING ValuePtr;
    UINT Flags;
    WCHAR Buffer[MAX_INF_STRING_LENGTH];

    INFCONTEXT Context;
    PCWSTR RootKeyName;
    HANDLE RootKeyHandle, KeyHandle;
    BOOLEAN Ok;

    Ok = FUNC9(hInf, Section, NULL, &Context);
    if (!Ok)
        return TRUE; /* Don't fail if the section isn't present */

    for (;Ok; Ok = FUNC10(&Context, &Context))
    {
        /* get root */
        if (!FUNC12(&Context, 1, Buffer, sizeof(Buffer)/sizeof(WCHAR), NULL))
            continue;
        RootKeyHandle = FUNC3(Buffer, &RootKeyName);
        if (!RootKeyHandle)
            continue;

        /* get key */
        if (!FUNC12(&Context, 2, Buffer, sizeof(Buffer)/sizeof(WCHAR), NULL))
            *Buffer = 0;

        FUNC1("KeyName: <%S\\%S>\n", RootKeyName, Buffer);

        /* get flags */
        if (!FUNC11(&Context, 4, (PINT)&Flags))
            Flags = 0;

        FUNC1("Flags: %lx\n", Flags);

        FUNC8(&Name, Buffer);
        FUNC4(&ObjectAttributes,
                                   &Name,
                                   OBJ_CASE_INSENSITIVE,
                                   RootKeyHandle,
                                   NULL);

        if (Delete || (Flags & FLG_ADDREG_OVERWRITEONLY))
        {
            Status = FUNC7(&KeyHandle,
                               KEY_ALL_ACCESS,
                               &ObjectAttributes);
            if (!FUNC5(Status))
            {
                FUNC2("NtOpenKey(%wZ) failed (Status %lx)\n", &Name, Status);
                continue;  /* ignore if it doesn't exist */
            }
        }
        else
        {
            Status = FUNC0(&KeyHandle,
                                     KEY_ALL_ACCESS,
                                     &ObjectAttributes,
                                     REG_OPTION_NON_VOLATILE);
            if (!FUNC5(Status))
            {
                FUNC2("CreateNestedKey(%wZ) failed (Status %lx)\n", &Name, Status);
                continue;
            }
        }

        /* get value name */
        if (FUNC12(&Context, 3, Buffer, sizeof(Buffer)/sizeof(WCHAR), NULL))
        {
            FUNC8(&Value, Buffer);
            ValuePtr = &Value;
        }
        else
        {
            ValuePtr = NULL;
        }

        /* and now do it */
        if (!FUNC13(KeyHandle, ValuePtr, &Context, Flags))
        {
            FUNC6(KeyHandle);
            return FALSE;
        }

        FUNC6(KeyHandle);
    }

    return TRUE;
}