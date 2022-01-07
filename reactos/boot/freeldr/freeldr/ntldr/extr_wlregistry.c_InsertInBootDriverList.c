
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int * Buffer; } ;
struct TYPE_11__ {int Link; TYPE_3__ RegistryPath; TYPE_3__ FilePath; } ;
struct TYPE_10__ {struct TYPE_10__* Flink; } ;
typedef TYPE_1__* PLIST_ENTRY ;
typedef TYPE_2__* PBOOT_DRIVER_LIST_ENTRY ;
typedef int BOOLEAN ;


 int ASSERT (int ) ;
 int BOOT_DRIVER_LIST_ENTRY ;
 TYPE_2__* CONTAINING_RECORD (TYPE_1__*,int ,int ) ;
 int FALSE ;
 int InsertTailList (TYPE_1__*,int *) ;
 int Link ;
 scalar_t__ RtlEqualUnicodeString (TYPE_3__*,TYPE_3__*,int ) ;
 int TRUE ;

__attribute__((used)) static
BOOLEAN
InsertInBootDriverList(
    PLIST_ENTRY BootDriverListHead,
    PBOOT_DRIVER_LIST_ENTRY BootDriverEntry)
{
    PBOOT_DRIVER_LIST_ENTRY DriverEntry;
    PLIST_ENTRY ListEntry;

    ASSERT(BootDriverEntry->FilePath.Buffer != ((void*)0));
    ASSERT(BootDriverEntry->RegistryPath.Buffer != ((void*)0));

    for (ListEntry = BootDriverListHead->Flink;
         ListEntry != BootDriverListHead;
         ListEntry = ListEntry->Flink)
    {
        DriverEntry = CONTAINING_RECORD(ListEntry,
                                        BOOT_DRIVER_LIST_ENTRY,
                                        Link);
        if ((DriverEntry->FilePath.Buffer != ((void*)0)) &&
            RtlEqualUnicodeString(&BootDriverEntry->FilePath,
                                  &DriverEntry->FilePath,
                                  TRUE))
        {
            return FALSE;
        }

        if ((DriverEntry->RegistryPath.Buffer != ((void*)0)) &&
            RtlEqualUnicodeString(&BootDriverEntry->RegistryPath,
                                  &DriverEntry->RegistryPath,
                                  TRUE))
        {
            return FALSE;
        }
    }

    InsertTailList(BootDriverListHead, &BootDriverEntry->Link);
    return TRUE;
}
