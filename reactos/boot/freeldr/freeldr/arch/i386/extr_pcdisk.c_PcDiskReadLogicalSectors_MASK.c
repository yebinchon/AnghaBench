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
typedef  int /*<<< orphan*/  ULONGLONG ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int UCHAR ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,...) ; 
 scalar_t__ TRUE ; 

BOOLEAN FUNC4(UCHAR DriveNumber, ULONGLONG SectorNumber, ULONG SectorCount, PVOID Buffer)
{
    BOOLEAN ExtensionsSupported;

    FUNC3("PcDiskReadLogicalSectors() DriveNumber: 0x%x SectorNumber: %I64d SectorCount: %d Buffer: 0x%x\n",
          DriveNumber, SectorNumber, SectorCount, Buffer);

    /*
     * Check to see if it is a fixed disk drive.
     * If so then check to see if Int13 extensions work.
     * If they do then use them, otherwise default back to BIOS calls.
     */
    ExtensionsSupported = FUNC0(DriveNumber);

    if ((DriveNumber >= 0x80) && ExtensionsSupported)
    {
        FUNC3("Using Int 13 Extensions for read. DiskInt13ExtensionsSupported(%d) = %s\n", DriveNumber, ExtensionsSupported ? "TRUE" : "FALSE");

        /* LBA is easy, nothing to calculate. Just do the read. */
        return FUNC2(DriveNumber, SectorNumber, SectorCount, Buffer);
    }
    else
    {
        /* LBA is not supported default to the CHS calls */
        return FUNC1(DriveNumber, SectorNumber, SectorCount, Buffer);
    }

    return TRUE;
}