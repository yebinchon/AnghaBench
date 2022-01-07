
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef int UNICODE_STRING ;
typedef int UINT ;
typedef int * PUNICODE_STRING ;
typedef int PINT ;
typedef int PCWSTR ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int INFCONTEXT ;
typedef int HINF ;
typedef int HANDLE ;
typedef int Buffer ;
typedef scalar_t__ BOOLEAN ;


 int CreateNestedKey (int *,int ,int *,int ) ;
 int DPRINT (char*,int,...) ;
 int DPRINT1 (char*,int *,int ) ;
 scalar_t__ FALSE ;
 int FLG_ADDREG_OVERWRITEONLY ;
 int GetRootKeyByName (scalar_t__*,int *) ;
 int InitializeObjectAttributes (int *,int *,int ,int ,int *) ;
 int KEY_ALL_ACCESS ;
 int MAX_INF_STRING_LENGTH ;
 int NT_SUCCESS (int ) ;
 int NtClose (int ) ;
 int NtOpenKey (int *,int ,int *) ;
 int OBJ_CASE_INSENSITIVE ;
 int REG_OPTION_NON_VOLATILE ;
 int RtlInitUnicodeString (int *,scalar_t__*) ;
 scalar_t__ SpInfFindFirstLine (int ,int ,int *,int *) ;
 scalar_t__ SpInfFindNextLine (int *,int *) ;
 int SpInfGetIntField (int *,int,int ) ;
 scalar_t__ SpInfGetStringField (int *,int,scalar_t__*,int,int *) ;
 scalar_t__ TRUE ;
 int do_reg_operation (int ,int *,int *,int) ;

__attribute__((used)) static BOOLEAN
registry_callback(HINF hInf, PCWSTR Section, BOOLEAN Delete)
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

    Ok = SpInfFindFirstLine(hInf, Section, ((void*)0), &Context);
    if (!Ok)
        return TRUE;

    for (;Ok; Ok = SpInfFindNextLine(&Context, &Context))
    {

        if (!SpInfGetStringField(&Context, 1, Buffer, sizeof(Buffer)/sizeof(WCHAR), ((void*)0)))
            continue;
        RootKeyHandle = GetRootKeyByName(Buffer, &RootKeyName);
        if (!RootKeyHandle)
            continue;


        if (!SpInfGetStringField(&Context, 2, Buffer, sizeof(Buffer)/sizeof(WCHAR), ((void*)0)))
            *Buffer = 0;

        DPRINT("KeyName: <%S\\%S>\n", RootKeyName, Buffer);


        if (!SpInfGetIntField(&Context, 4, (PINT)&Flags))
            Flags = 0;

        DPRINT("Flags: %lx\n", Flags);

        RtlInitUnicodeString(&Name, Buffer);
        InitializeObjectAttributes(&ObjectAttributes,
                                   &Name,
                                   OBJ_CASE_INSENSITIVE,
                                   RootKeyHandle,
                                   ((void*)0));

        if (Delete || (Flags & FLG_ADDREG_OVERWRITEONLY))
        {
            Status = NtOpenKey(&KeyHandle,
                               KEY_ALL_ACCESS,
                               &ObjectAttributes);
            if (!NT_SUCCESS(Status))
            {
                DPRINT1("NtOpenKey(%wZ) failed (Status %lx)\n", &Name, Status);
                continue;
            }
        }
        else
        {
            Status = CreateNestedKey(&KeyHandle,
                                     KEY_ALL_ACCESS,
                                     &ObjectAttributes,
                                     REG_OPTION_NON_VOLATILE);
            if (!NT_SUCCESS(Status))
            {
                DPRINT1("CreateNestedKey(%wZ) failed (Status %lx)\n", &Name, Status);
                continue;
            }
        }


        if (SpInfGetStringField(&Context, 3, Buffer, sizeof(Buffer)/sizeof(WCHAR), ((void*)0)))
        {
            RtlInitUnicodeString(&Value, Buffer);
            ValuePtr = &Value;
        }
        else
        {
            ValuePtr = ((void*)0);
        }


        if (!do_reg_operation(KeyHandle, ValuePtr, &Context, Flags))
        {
            NtClose(KeyHandle);
            return FALSE;
        }

        NtClose(KeyHandle);
    }

    return TRUE;
}
