#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/ * Buffer; } ;
struct TYPE_11__ {int /*<<< orphan*/  Link; TYPE_3__ RegistryPath; TYPE_3__ FilePath; } ;
struct TYPE_10__ {struct TYPE_10__* Flink; } ;
typedef  TYPE_1__* PLIST_ENTRY ;
typedef  TYPE_2__* PBOOT_DRIVER_LIST_ENTRY ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BOOT_DRIVER_LIST_ENTRY ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Link ; 
 scalar_t__ FUNC3 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static
BOOLEAN
FUNC4(
    PLIST_ENTRY BootDriverListHead,
    PBOOT_DRIVER_LIST_ENTRY BootDriverEntry)
{
    PBOOT_DRIVER_LIST_ENTRY DriverEntry;
    PLIST_ENTRY ListEntry;

    FUNC0(BootDriverEntry->FilePath.Buffer != NULL);
    FUNC0(BootDriverEntry->RegistryPath.Buffer != NULL);

    for (ListEntry = BootDriverListHead->Flink;
         ListEntry != BootDriverListHead;
         ListEntry = ListEntry->Flink)
    {
        DriverEntry = FUNC1(ListEntry,
                                        BOOT_DRIVER_LIST_ENTRY,
                                        Link);
        if ((DriverEntry->FilePath.Buffer != NULL) &&
            FUNC3(&BootDriverEntry->FilePath,
                                  &DriverEntry->FilePath,
                                  TRUE))
        {
            return FALSE;
        }

        if ((DriverEntry->RegistryPath.Buffer != NULL) &&
            FUNC3(&BootDriverEntry->RegistryPath,
                                  &DriverEntry->RegistryPath,
                                  TRUE))
        {
            return FALSE;
        }
    }

    FUNC2(BootDriverListHead, &BootDriverEntry->Link);
    return TRUE;
}