
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
struct TYPE_8__ {int Str; } ;
typedef TYPE_2__ SDB_TMP_STR ;
typedef int PCWSTR ;
typedef int NTSTATUS ;
typedef int HANDLE ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int KEY_SET_VALUE ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NtClose (int ) ;
 int NtDeleteValueKey (int ,int *) ;
 int SHIM_INFO (char*,TYPE_1__*,int ) ;
 int STATUS_OBJECT_NAME_NOT_FOUND ;
 int STATUS_SUCCESS ;
 int SdbFree (int ) ;
 int SdbpFreeTempStr (TYPE_2__*) ;
 int SdbpOpenKey (TYPE_1__*,scalar_t__,int ,int *) ;
 int SdbpResolvePath (TYPE_2__*,int ) ;

BOOL SdbDeletePermLayerKeys(PCWSTR wszPath, BOOL bMachine)
{
    UNICODE_STRING FullKey;
    SDB_TMP_STR LongPath;
    HANDLE KeyHandle;
    NTSTATUS Status;

    if (!SdbpResolvePath(&LongPath, wszPath))
        return FALSE;

    Status = SdbpOpenKey(&FullKey, bMachine, KEY_SET_VALUE, &KeyHandle);
    if (NT_SUCCESS(Status))
    {
        Status = NtDeleteValueKey(KeyHandle, &LongPath.Str);
        if (!NT_SUCCESS(Status))
        {
            SHIM_INFO("Failed to delete value from Key \"%wZ\" Status 0x%lx\n", &FullKey, Status);

            if (Status == STATUS_OBJECT_NAME_NOT_FOUND)
                Status = STATUS_SUCCESS;
        }
        NtClose(KeyHandle);
        SdbFree(FullKey.Buffer);
    }
    SdbpFreeTempStr(&LongPath);
    return NT_SUCCESS(Status);
}
