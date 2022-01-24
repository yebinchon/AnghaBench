#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {void* Buffer; } ;
struct TYPE_18__ {void* Buffer; } ;
struct TYPE_14__ {TYPE_3__* Flink; } ;
struct TYPE_17__ {TYPE_1__ Link; TYPE_5__ FilePath; void* LdrEntry; TYPE_9__ RegistryPath; } ;
struct TYPE_16__ {struct TYPE_16__* Flink; } ;
struct TYPE_15__ {int /*<<< orphan*/  LoadOrderListHead; TYPE_3__ BootDriverListHead; } ;
typedef  TYPE_2__* PLOADER_PARAMETER_BLOCK ;
typedef  TYPE_3__* PLIST_ENTRY ;
typedef  int /*<<< orphan*/  PCSTR ;
typedef  TYPE_4__* PBOOT_DRIVER_LIST_ENTRY ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  BOOT_DRIVER_LIST_ENTRY ; 
 TYPE_4__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_5__*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  Link ; 
 void* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_5__*,void*,TYPE_9__*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_5__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,void**) ; 

BOOLEAN
FUNC7(PLOADER_PARAMETER_BLOCK LoaderBlock,
                      PCSTR BootPath)
{
    PLIST_ENTRY NextBd;
    PBOOT_DRIVER_LIST_ENTRY BootDriver;
    BOOLEAN Success;
    BOOLEAN ret = TRUE;

    // Walk through the boot drivers list
    NextBd = LoaderBlock->BootDriverListHead.Flink;

    while (NextBd != &LoaderBlock->BootDriverListHead)
    {
        BootDriver = FUNC0(NextBd, BOOT_DRIVER_LIST_ENTRY, Link);

        FUNC4("BootDriver %wZ DTE %08X RegPath: %wZ\n", &BootDriver->FilePath,
            BootDriver->LdrEntry, &BootDriver->RegistryPath);

        // Paths are relative (FIXME: Are they always relative?)

        // Load it
        Success = FUNC6(&LoaderBlock->LoadOrderListHead,
                                         BootPath,
                                         &BootDriver->FilePath,
                                         0,
                                         &BootDriver->LdrEntry);

        if (Success)
        {
            // Convert the RegistryPath and DTE addresses to VA since we are not going to use it anymore
            BootDriver->RegistryPath.Buffer = FUNC2(BootDriver->RegistryPath.Buffer);
            BootDriver->FilePath.Buffer = FUNC2(BootDriver->FilePath.Buffer);
            BootDriver->LdrEntry = FUNC2(BootDriver->LdrEntry);
        }
        else
        {
            // Loading failed - cry loudly
            FUNC1("Can't load boot driver '%wZ'!\n", &BootDriver->FilePath);
            FUNC5("Can't load boot driver '%wZ'!", &BootDriver->FilePath);
            ret = FALSE;

            // Remove it from the list and try to continue
            FUNC3(NextBd);
        }

        NextBd = BootDriver->Link.Flink;
    }

    return ret;
}