
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
typedef int USHORT ;
typedef int UNICODE_NULL ;
struct TYPE_6__ {int MaximumLength; TYPE_1__* Buffer; scalar_t__ Length; } ;
struct TYPE_5__ {TYPE_2__ RegistryPath; TYPE_2__ FilePath; int * LdrEntry; } ;
typedef scalar_t__* PWSTR ;
typedef TYPE_1__* PBOOT_DRIVER_LIST_ENTRY ;
typedef int NTSTATUS ;
typedef int LIST_ENTRY ;
typedef int BOOT_DRIVER_LIST_ENTRY ;
typedef int BOOLEAN ;


 int FALSE ;
 void* FrLdrHeapAlloc (int,int ) ;
 int FrLdrHeapFree (TYPE_1__*,int ) ;
 int InsertInBootDriverList (int *,TYPE_1__*) ;
 int NT_SUCCESS (int ) ;
 int RtlAppendUnicodeToString (TYPE_2__*,...) ;
 int TAG_WLDR_BDE ;
 int TAG_WLDR_NAME ;
 int TRUE ;
 scalar_t__ wcslen (scalar_t__*) ;

BOOLEAN
WinLdrAddDriverToList(LIST_ENTRY *BootDriverListHead,
                      PWSTR RegistryPath,
                      PWSTR ImagePath,
                      PWSTR ServiceName)
{
    PBOOT_DRIVER_LIST_ENTRY BootDriverEntry;
    NTSTATUS Status;
    USHORT PathLength;

    BootDriverEntry = FrLdrHeapAlloc(sizeof(BOOT_DRIVER_LIST_ENTRY), TAG_WLDR_BDE);

    if (!BootDriverEntry)
        return FALSE;


    BootDriverEntry->LdrEntry = ((void*)0);



    if (ImagePath && (ImagePath[0] != 0))
    {

        PathLength = (USHORT)wcslen(ImagePath) * sizeof(WCHAR) + sizeof(UNICODE_NULL);

        BootDriverEntry->FilePath.Length = 0;
        BootDriverEntry->FilePath.MaximumLength = PathLength;
        BootDriverEntry->FilePath.Buffer = FrLdrHeapAlloc(PathLength, TAG_WLDR_NAME);

        if (!BootDriverEntry->FilePath.Buffer)
        {
            FrLdrHeapFree(BootDriverEntry, TAG_WLDR_BDE);
            return FALSE;
        }

        Status = RtlAppendUnicodeToString(&BootDriverEntry->FilePath, ImagePath);
        if (!NT_SUCCESS(Status))
        {
            FrLdrHeapFree(BootDriverEntry->FilePath.Buffer, TAG_WLDR_NAME);
            FrLdrHeapFree(BootDriverEntry, TAG_WLDR_BDE);
            return FALSE;
        }
    }
    else
    {

        PathLength = (USHORT)wcslen(ServiceName)*sizeof(WCHAR) + sizeof(L"system32\\drivers\\.sys");
        BootDriverEntry->FilePath.Length = 0;
        BootDriverEntry->FilePath.MaximumLength = PathLength;
        BootDriverEntry->FilePath.Buffer = FrLdrHeapAlloc(PathLength, TAG_WLDR_NAME);

        if (!BootDriverEntry->FilePath.Buffer)
        {
            FrLdrHeapFree(BootDriverEntry, TAG_WLDR_NAME);
            return FALSE;
        }

        Status = RtlAppendUnicodeToString(&BootDriverEntry->FilePath, L"system32\\drivers\\");
        if (!NT_SUCCESS(Status))
        {
            FrLdrHeapFree(BootDriverEntry->FilePath.Buffer, TAG_WLDR_NAME);
            FrLdrHeapFree(BootDriverEntry, TAG_WLDR_NAME);
            return FALSE;
        }

        Status = RtlAppendUnicodeToString(&BootDriverEntry->FilePath, ServiceName);
        if (!NT_SUCCESS(Status))
        {
            FrLdrHeapFree(BootDriverEntry->FilePath.Buffer, TAG_WLDR_NAME);
            FrLdrHeapFree(BootDriverEntry, TAG_WLDR_NAME);
            return FALSE;
        }

        Status = RtlAppendUnicodeToString(&BootDriverEntry->FilePath, L".sys");
        if (!NT_SUCCESS(Status))
        {
            FrLdrHeapFree(BootDriverEntry->FilePath.Buffer, TAG_WLDR_NAME);
            FrLdrHeapFree(BootDriverEntry, TAG_WLDR_NAME);
            return FALSE;
        }
    }


    PathLength = (USHORT)(wcslen(RegistryPath) + wcslen(ServiceName))*sizeof(WCHAR) + sizeof(UNICODE_NULL);
    BootDriverEntry->RegistryPath.Length = 0;
    BootDriverEntry->RegistryPath.MaximumLength = PathLength;
    BootDriverEntry->RegistryPath.Buffer = FrLdrHeapAlloc(PathLength, TAG_WLDR_NAME);
    if (!BootDriverEntry->RegistryPath.Buffer)
        return FALSE;

    Status = RtlAppendUnicodeToString(&BootDriverEntry->RegistryPath, RegistryPath);
    if (!NT_SUCCESS(Status))
        return FALSE;

    Status = RtlAppendUnicodeToString(&BootDriverEntry->RegistryPath, ServiceName);
    if (!NT_SUCCESS(Status))
        return FALSE;


    if (!InsertInBootDriverList(BootDriverListHead, BootDriverEntry))
    {

        if (BootDriverEntry->FilePath.Buffer) FrLdrHeapFree(BootDriverEntry->FilePath.Buffer, TAG_WLDR_NAME);
        if (BootDriverEntry->RegistryPath.Buffer) FrLdrHeapFree(BootDriverEntry->RegistryPath.Buffer, TAG_WLDR_NAME);
        FrLdrHeapFree(BootDriverEntry, TAG_WLDR_BDE);
    }

    return TRUE;
}
