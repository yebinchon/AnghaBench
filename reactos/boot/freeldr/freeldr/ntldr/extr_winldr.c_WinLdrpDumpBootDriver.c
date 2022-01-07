
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_8__ {TYPE_3__* Flink; } ;
struct TYPE_11__ {TYPE_1__ Link; int RegistryPath; int LdrEntry; int FilePath; } ;
struct TYPE_10__ {struct TYPE_10__* Flink; } ;
struct TYPE_9__ {TYPE_3__ BootDriverListHead; } ;
typedef TYPE_2__* PLOADER_PARAMETER_BLOCK ;
typedef TYPE_3__* PLIST_ENTRY ;
typedef TYPE_4__* PBOOT_DRIVER_LIST_ENTRY ;


 int BOOT_DRIVER_LIST_ENTRY ;
 TYPE_4__* CONTAINING_RECORD (TYPE_3__*,int ,int ) ;
 int Link ;
 int TRACE (char*,int *,int ,int *) ;

VOID
WinLdrpDumpBootDriver(PLOADER_PARAMETER_BLOCK LoaderBlock)
{
    PLIST_ENTRY NextBd;
    PBOOT_DRIVER_LIST_ENTRY BootDriver;

    NextBd = LoaderBlock->BootDriverListHead.Flink;

    while (NextBd != &LoaderBlock->BootDriverListHead)
    {
        BootDriver = CONTAINING_RECORD(NextBd, BOOT_DRIVER_LIST_ENTRY, Link);

        TRACE("BootDriver %wZ DTE %08X RegPath: %wZ\n", &BootDriver->FilePath,
            BootDriver->LdrEntry, &BootDriver->RegistryPath);

        NextBd = BootDriver->Link.Flink;
    }
}
