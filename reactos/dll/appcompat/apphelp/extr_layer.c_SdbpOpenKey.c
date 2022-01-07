
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int WCHAR ;
typedef scalar_t__ USHORT ;
struct TYPE_12__ {scalar_t__ Length; } ;
typedef TYPE_1__ UNICODE_STRING ;
struct TYPE_13__ {int * Buffer; scalar_t__ Length; scalar_t__ MaximumLength; } ;
typedef TYPE_2__* PUNICODE_STRING ;
typedef int PHANDLE ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef scalar_t__ BOOL ;
typedef int ACCESS_MASK ;


 int * APPCOMPAT_LAYER_KEY ;
 int NT_SUCCESS (int ) ;
 int NtOpenKey (int ,int,int *) ;
 int OBJ_CASE_INSENSITIVE ;
 int REGISTRY_MACHINE ;
 int RTL_INIT_OBJECT_ATTRIBUTES (TYPE_2__*,int ) ;
 int RtlAppendUnicodeStringToString (TYPE_2__*,TYPE_1__*) ;
 int RtlAppendUnicodeToString (TYPE_2__*,int const*) ;
 int RtlFormatCurrentUserKeyPath (TYPE_1__*) ;
 int RtlFreeUnicodeString (TYPE_1__*) ;
 int RtlInitUnicodeString (TYPE_1__*,int ) ;
 int SHIM_ERR (char*,TYPE_2__*,...) ;
 int * SdbAlloc (scalar_t__) ;
 int SdbFree (int *) ;
 scalar_t__ SdbpStrsize (int const*) ;
 int Wow64QueryFlag () ;

NTSTATUS SdbpOpenKey(PUNICODE_STRING FullPath, BOOL bMachine, ACCESS_MASK Access, PHANDLE KeyHandle)
{
    UNICODE_STRING BasePath;
    const WCHAR* LayersKey = APPCOMPAT_LAYER_KEY;
    OBJECT_ATTRIBUTES ObjectLayer = RTL_INIT_OBJECT_ATTRIBUTES(FullPath, OBJ_CASE_INSENSITIVE);
    NTSTATUS Status;
    FullPath->Buffer = ((void*)0);
    FullPath->Length = FullPath->MaximumLength = 0;
    if (bMachine)
    {
        RtlInitUnicodeString(&BasePath, REGISTRY_MACHINE);
    }
    else
    {
        Status = RtlFormatCurrentUserKeyPath(&BasePath);
        if (!NT_SUCCESS(Status))
        {
            SHIM_ERR("Unable to acquire user registry key, Error: 0x%lx\n", Status);
            return Status;
        }
    }
    FullPath->MaximumLength = (USHORT)(BasePath.Length + SdbpStrsize(LayersKey));
    FullPath->Buffer = SdbAlloc(FullPath->MaximumLength);
    FullPath->Length = 0;
    RtlAppendUnicodeStringToString(FullPath, &BasePath);
    if (!bMachine)
        RtlFreeUnicodeString(&BasePath);
    RtlAppendUnicodeToString(FullPath, LayersKey);

    Status = NtOpenKey(KeyHandle, Access | Wow64QueryFlag(), &ObjectLayer);
    if (!NT_SUCCESS(Status))
    {
        SHIM_ERR("Unable to open Key  \"%wZ\" Status 0x%lx\n", FullPath, Status);
        SdbFree(FullPath->Buffer);
        FullPath->Buffer = ((void*)0);
    }
    return Status;
}
