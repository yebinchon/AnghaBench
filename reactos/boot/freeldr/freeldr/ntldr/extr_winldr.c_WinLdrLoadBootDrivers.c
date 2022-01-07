
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_19__ {void* Buffer; } ;
struct TYPE_18__ {void* Buffer; } ;
struct TYPE_14__ {TYPE_3__* Flink; } ;
struct TYPE_17__ {TYPE_1__ Link; TYPE_5__ FilePath; void* LdrEntry; TYPE_9__ RegistryPath; } ;
struct TYPE_16__ {struct TYPE_16__* Flink; } ;
struct TYPE_15__ {int LoadOrderListHead; TYPE_3__ BootDriverListHead; } ;
typedef TYPE_2__* PLOADER_PARAMETER_BLOCK ;
typedef TYPE_3__* PLIST_ENTRY ;
typedef int PCSTR ;
typedef TYPE_4__* PBOOT_DRIVER_LIST_ENTRY ;
typedef scalar_t__ BOOLEAN ;


 int BOOT_DRIVER_LIST_ENTRY ;
 TYPE_4__* CONTAINING_RECORD (TYPE_3__*,int ,int ) ;
 int ERR (char*,TYPE_5__*) ;
 scalar_t__ FALSE ;
 int Link ;
 void* PaToVa (void*) ;
 int RemoveEntryList (TYPE_3__*) ;
 int TRACE (char*,TYPE_5__*,void*,TYPE_9__*) ;
 scalar_t__ TRUE ;
 int UiMessageBox (char*,TYPE_5__*) ;
 scalar_t__ WinLdrLoadDeviceDriver (int *,int ,TYPE_5__*,int ,void**) ;

BOOLEAN
WinLdrLoadBootDrivers(PLOADER_PARAMETER_BLOCK LoaderBlock,
                      PCSTR BootPath)
{
    PLIST_ENTRY NextBd;
    PBOOT_DRIVER_LIST_ENTRY BootDriver;
    BOOLEAN Success;
    BOOLEAN ret = TRUE;


    NextBd = LoaderBlock->BootDriverListHead.Flink;

    while (NextBd != &LoaderBlock->BootDriverListHead)
    {
        BootDriver = CONTAINING_RECORD(NextBd, BOOT_DRIVER_LIST_ENTRY, Link);

        TRACE("BootDriver %wZ DTE %08X RegPath: %wZ\n", &BootDriver->FilePath,
            BootDriver->LdrEntry, &BootDriver->RegistryPath);




        Success = WinLdrLoadDeviceDriver(&LoaderBlock->LoadOrderListHead,
                                         BootPath,
                                         &BootDriver->FilePath,
                                         0,
                                         &BootDriver->LdrEntry);

        if (Success)
        {

            BootDriver->RegistryPath.Buffer = PaToVa(BootDriver->RegistryPath.Buffer);
            BootDriver->FilePath.Buffer = PaToVa(BootDriver->FilePath.Buffer);
            BootDriver->LdrEntry = PaToVa(BootDriver->LdrEntry);
        }
        else
        {

            ERR("Can't load boot driver '%wZ'!\n", &BootDriver->FilePath);
            UiMessageBox("Can't load boot driver '%wZ'!", &BootDriver->FilePath);
            ret = FALSE;


            RemoveEntryList(NextBd);
        }

        NextBd = BootDriver->Link.Flink;
    }

    return ret;
}
